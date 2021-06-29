class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.string :course_name
      t.integer :course_fee
      t.integer :course_duration

      t.timestamps
    end
  end
end
