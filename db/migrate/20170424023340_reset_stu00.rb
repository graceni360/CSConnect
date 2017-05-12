class ResetStu00 < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
  t.string :email, null: false
  t.string :firstName, null: false
  t.string :lastName, null: false
  t.string :password, null: false
  t.timestamps
  end
   add_index :students, :email, unique: true
   end
end
