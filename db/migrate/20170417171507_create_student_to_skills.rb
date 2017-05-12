class CreateStudentToSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :student_to_skills do |t|
      t.integer :studentId
      t.integer :skillId

      t.timestamps
    end
  end
end
