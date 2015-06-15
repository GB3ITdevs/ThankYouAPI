class Project < ActiveRecord::Base

  self.table_name = 'Project'
  self.primary_key = 'projectID'

  belongs_to :GrantRound,
	:foreign_key => 'roundID'
	
end
