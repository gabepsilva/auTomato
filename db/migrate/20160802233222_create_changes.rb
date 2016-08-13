class CreateChanges < ActiveRecord::Migration[5.0]
  def change
    create_table :changes do |t|
      t.text :name
      t.text :description
      t.string :chargeCode


      t.timestamps
    end
  end
end
