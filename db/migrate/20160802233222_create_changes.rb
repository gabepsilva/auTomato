class CreateChanges < ActiveRecord::Migration[5.0]
  def change
    create_table :changes do |t|
      t.string :name
      t.text :description
      t.string :chargeCode
      t.datetime :implementation_date


      t.timestamps
    end
  end
end
