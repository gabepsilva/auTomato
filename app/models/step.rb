class Step < ApplicationRecord

  


  belongs_to :change
  belongs_to :assignedTo, :class_name => 'Staff', :foreign_key => 'assignedTo'
  accepts_nested_attributes_for :assignedTo

  validates :change_id, presence: true



end
