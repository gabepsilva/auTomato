class CreateRelationStaffChange < ActiveRecord::Migration[5.0]
  def change

      add_column :changes, :owner_id, :integer
      add_column :changes, :coordinator_id, :integer
      add_column :changes, :project_id, :integer

  end
end
