class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :jobId
      t.text :jobDesc
      t.integer :jobTypeId

      t.timestamps
    end
  end
end
