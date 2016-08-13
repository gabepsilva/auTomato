class Step < ApplicationRecord

  


  belongs_to :change
  belongs_to :assignedTo, :class_name => 'Staff', :foreign_key => 'assignedTo'


  validates :change_id, presence: true

end
