class CreateCompanyToJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :company_to_jobs do |t|
      t.integer :companyId
      t.integer :jobId

      t.timestamps
    end
  end
end
