class AddCommentsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :comments, :string
  end
end
