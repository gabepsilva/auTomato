class ProjectMember < ActiveRecord::Base

  belongs_to :project
  belongs_to :member, :class_name => 'User', :foreign_key => 'staff_id'



end