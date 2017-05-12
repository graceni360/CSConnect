class AddJobTypeToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :jobType, :string
  end
end
