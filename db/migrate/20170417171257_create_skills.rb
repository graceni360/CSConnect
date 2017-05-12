class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.integer :skillId
      t.string :skillName

      t.timestamps
    end
  end
end
