class AddChangeIdToSteps < ActiveRecord::Migration[5.0]
  def change

    add_column :steps, :change_id, :integer

  end
end
