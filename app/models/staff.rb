class Staff < ApplicationRecord

  has_many :steps, through: :changeRequests
  has_many :changeRequests, class_name: 'Change', foreign_key: 'owner_id'


  has_many :project_members
  has_many :projects, through: :project_members

end
