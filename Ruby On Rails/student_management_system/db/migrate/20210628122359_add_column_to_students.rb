class AddColumnToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students , :course_name , :string
    rename_column :faculties , :faculty_course , :course_name
    add_column :students , :enrolled_date , :date
    remove_timestamps :students
    remove_timestamps :courses
    remove_timestamps :faculties
  end
end
