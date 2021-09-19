class Infocolumn < ActiveRecord::Migration[6.1]
  def change
      add_column :courses, :details, :text
  end
end
