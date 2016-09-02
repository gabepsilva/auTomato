class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.integer :stepNo
      t.string :action, :default => ' '
      t.string :status,  :default => 'TODO'
      t.integer :change_id
      t.integer :assignedTo

      t.timestamps
    end
  end
end
