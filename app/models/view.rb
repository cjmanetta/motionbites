class View < ActiveRecord::Base
  belongs_to :user
  belongs_to :exercise

  def last_three
  	[self.views.first, self.views.second, self.views.third]
  end
end
