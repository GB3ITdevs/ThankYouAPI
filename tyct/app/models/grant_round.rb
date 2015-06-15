class GrantRound < ActiveRecord::Base

  self.table_name = 'GrantRound'
  self.primary_key = 'roundID'

  belongs_to :Community,
	:foreign_key => 'communityID'

end
