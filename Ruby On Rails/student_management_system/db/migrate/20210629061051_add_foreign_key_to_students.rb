class AddForeignKeyToStudents < ActiveRecord::Migration[6.1]
  def change
    add_reference :students , :course
    remove_column :faculties , :faculty_id
    remove_column :courses , :course_id
    add_reference :faculties , :course
  end
end
