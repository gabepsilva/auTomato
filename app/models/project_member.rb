class ProjectMember < ActiveRecord::Base

  belongs_to :project
  belongs_to :member, :class_name => 'Staff', :foreign_key => 'staff_id'



end