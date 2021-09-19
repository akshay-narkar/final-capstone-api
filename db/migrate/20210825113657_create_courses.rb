class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :domain
      t.integer :fee
      t.string :teacher_name
      t.integer :rating
      t.string :teacher_photo
      t.string :course_photo

      t.timestamps
    end
  end
end
