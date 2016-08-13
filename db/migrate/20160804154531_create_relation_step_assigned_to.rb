class CreateRelationStepAssignedTo < ActiveRecord::Migration[5.0]
  def change

    add_column :steps, :assignedTo, :integer

  end
end
