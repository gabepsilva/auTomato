class CreateLanding < ActiveRecord::Migration[5.0]
  def change
    create_table :landings do |t|

      t.string :title
      t.string :sub_title
      t.string :primary_color

    end
  end
end
