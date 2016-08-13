class Project < ApplicationRecord

  has_many :project_members
  has_many :members, class_name: 'Staff', foreign_key: 'member_id', through: :project_members

  has_many :changeRequests, :class_name => 'Change', :foreign_key => 'project_id'


end
