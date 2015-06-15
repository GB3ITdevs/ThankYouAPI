class ProjectWebsite < ActiveRecord::Base

  self.table_name = 'ProjectWebsite'
  self.primary_key = 'websiteID'

  belongs_to :Project,
	:foreign_key => 'projectID'

end
