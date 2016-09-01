class CreateStepStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :step_statuses do |t|
      t.string :name, :default => 'unset'
      t.string :color, :default => 'gray'

    end
  end
end
