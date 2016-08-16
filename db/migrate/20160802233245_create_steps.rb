class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.integer :stepNo
      t.string :action
      t.string :status

      t.timestamps
    end
  end
end
