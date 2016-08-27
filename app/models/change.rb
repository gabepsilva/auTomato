class Change < ApplicationRecord

  has_many :steps


  belongs_to :project
  accepts_nested_attributes_for :project

  belongs_to :owner, :class_name => 'Staff'
  accepts_nested_attributes_for :owner


  def print_implementation_date

    implementation_date.strftime("%A, %B %d, %Y %H:%M %p") unless implementation_date.nil?

  end

end
