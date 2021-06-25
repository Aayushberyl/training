class CreateStudentCollegeDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :student_college_details do |t|
      t.integer :univroll
      t.string :name
      t.integer :fees
      t.string :colname
      t.timestamps
    end
  end
end
