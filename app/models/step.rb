class Step < ApplicationRecord

  belongs_to :change

  belongs_to :assignedTo, :class_name => 'Staff', :foreign_key => 'assignedTo'
  accepts_nested_attributes_for :assignedTo

  has_many :logs

  validates :change_id, presence: true

  attr_accessor :links_to_display



end
