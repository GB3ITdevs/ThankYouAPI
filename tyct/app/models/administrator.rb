class Administrator < ActiveRecord::Base
  self.table_name = 'Administrator'
  self.primary_key = 'adminID'
  
  has_one :User,
	:foreign_key => 'userID'

end
