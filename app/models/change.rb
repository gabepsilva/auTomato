class Change < ApplicationRecord

  has_many :steps

  belongs_to :project
  accepts_nested_attributes_for :project

  belongs_to :owner, :class_name => 'User'
  accepts_nested_attributes_for :owner

  attr_accessor :links_to_display

end
