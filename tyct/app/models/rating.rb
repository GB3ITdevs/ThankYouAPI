class Rating < ActiveRecord::Base

  self.table_name = 'Ratings'
  self.primary_key = 'ratingID'

  belongs_to :Project,
	:foreign_key => 'Project'

  belongs_to :User,
	:foreign_key  => 'userID'
end
