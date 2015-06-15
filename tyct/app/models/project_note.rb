class ProjectNote < ActiveRecord::Base

  self.table_name = 'ProjectNotes'
  self.primary_key = 'noteID'

  belongs_to :User,
	:foreign_key => 'userID'
  belongs_to :Project,
	:foreign_key => 'projectID'
	
end
