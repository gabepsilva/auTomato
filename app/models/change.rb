class Change < ApplicationRecord

  has_many :steps
  #accepts_nested_attributes_for :steps

  belongs_to :project
  accepts_nested_attributes_for :project

  belongs_to :owner, :class_name => 'Staff'
  accepts_nested_attributes_for :owner
  #belongs_to :coordinator, :class_name => 'Staff', :foreign_key => 'coordinator_id', inverse_of: :changeRequests

end
