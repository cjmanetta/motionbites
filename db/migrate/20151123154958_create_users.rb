class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :admin
      t.integer :age
      t.boolean :basic_start
      t.integer :days_of_7_vig
      t.integer :mins_vig_per_day
      t.integer :days_of_7_mod
      t.integer :mins_mod_per_day
      t.integer :days_of_7_walk
      t.integer :mins_walk_per_day
      t.integer :mins_weekday_sitting

      t.timestamps null: false
    end
  end
end