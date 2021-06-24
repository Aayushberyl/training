class AddCourseToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :course, :string
  end
end
