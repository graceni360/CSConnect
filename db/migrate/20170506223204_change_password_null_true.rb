class ChangePasswordNullTrue < ActiveRecord::Migration[5.0]
  def change
  change_column_null :students, :password, true
  end
end
