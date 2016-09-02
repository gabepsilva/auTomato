class CreateChanges < ActiveRecord::Migration[5.0]
  def change
    create_table :changes do |t|
      t.string :name
      t.text :description
      t.string :chargeCode
      t.datetime :implementation_date
      t.integer :owner_id
      t.integer :coordinator_id
      t.integer :project_id

      t.timestamps
    end
  end
end
