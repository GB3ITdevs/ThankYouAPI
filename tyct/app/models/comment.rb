class Comment < ActiveRecord::Base

  self.table_name = 'Comment'
  self.primary_key = 'commentID'

  belongs_to :User,
	:foreign_key => 'userID'
  belongs_to :Community,
	:foreign_key => 'postalCode'

end
