class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :log_path
      t.integer :step_id

      t.timestamp
    end
  end
end
