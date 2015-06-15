

class User < ActiveRecord::Base

has_secure_password validations: false 
validates :password, presence: true, length: { minimum: 6 } 


  self.table_name = 'User'
  self.primary_key = 'userID'

    has_one :Community,
	:foreign_key => 'communityID'

end
