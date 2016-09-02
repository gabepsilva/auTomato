class CreateStaffs < ActiveRecord::Migration[5.0]
  def change
    create_table :staffs do |t|
      t.string :name, unique: true
      t.string :email, unique: true
      t.string :contact
    end
  end
end
