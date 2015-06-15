class PhoneNumber < ActiveRecord::Base

  self.table_name = 'PhoneNumber'
  self.primary_key = 'phoneID'

  belongs_to :User,
	:foreign_key => 'userID'

end
