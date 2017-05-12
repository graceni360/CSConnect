class CreateJobToSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :job_to_skills do |t|
      t.integer :jobId
      t.integer :skillId

      t.timestamps
    end
  end
end
