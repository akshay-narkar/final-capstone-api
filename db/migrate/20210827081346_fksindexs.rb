class Fksindexs < ActiveRecord::Migration[6.1]
  def change   
    add_index :favs, [:user_id, :course_id], unique: true
    add_foreign_key :favs, :users
    add_foreign_key :favs, :courses
  end
end
