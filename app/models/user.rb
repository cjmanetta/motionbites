class User < ActiveRecord::Base
  has_secure_password

  validates :first_name, :last_name, presence: true
  validates :email,
  presence: true,
  format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :birthdate,
  presence: true,
  format: { with: /(\d{1,2}[-\/]\d{1,2}[-\/]\d{4})|(\d{4}[-\/]\d{1,2}[-\/]\d{1,2})/ }
  validate :user_must_be_older_than_18

  has_many :views
  has_many :exercises, through: :views

  def calculate_age
    birthday  = Date.parse(self.birthdate)
    (Date.today - birthday).to_i / 365
  end

  def user_must_be_older_than_18
    errors.add(:birthdate, "Bummer! you must be atleast 18 years old to use motion moments" ) if calculate_age < 18
  end

  def adjust_minutes
    case self.viewership_level
    when 1
      vlevel_mult = 1.1
    when 2
      vlevel_mult = 1.2
    when 3
      vlevel_mult = 1.3
    when 4
      vlevel_mult = 1.4
    when 5
      vlevel_mult = 1.5
    end

    mins_vig_per_week = (self.days_of_7_vig * self.mins_vig_per_day) * 1.75
    mins_mod_per_week = (self.days_of_7_mod * self.mins_mod_per_day) * 1.5
    mins_walk_per_week = (self.days_of_7_walk * self.mins_walk_per_day) * 1.25
    sit_penalty = self.mins_weekday_sitting * 0.075

    (mins_vig_per_week + mins_mod_per_week + mins_walk_per_week - sit_penalty) * vlevel_mult
  end

  def calculate_fitness_score
    case adjust_minutes
    when 0..100
      fitness_score = 1
    when 101..200
      fitness_score = 2
    when 201..250
      fitness_score = 3
    when 251..300
      fitness_score = 4
    when 301..350
      fitness_score = 5
    when 351..500
      fitness_score = 6
    else
      fitness_score = 7
    end

    if self.org_pa && fitness_score != 7
      self.update_attribute(:fitness_score, (fitness_score + 1))
      # self.fitness_score = fitness_score + 1
    else
      self.update_attribute(:fitness_score, fitness_score)
    end
  end
end
