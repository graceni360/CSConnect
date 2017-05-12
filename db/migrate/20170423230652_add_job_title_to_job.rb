class AddJobTitleToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :jobTitle, :string
  end
end
