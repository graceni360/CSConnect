class AddStartDateToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :startDate, :date
  end
end
