class ProjectMembers < ActiveRecord::Migration[5.0]
  def change

    create_table :project_members do |t|

      t.integer :project_id
      t.integer :staff_id

    end

  end
end
