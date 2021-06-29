class RenameColumnToStudents < ActiveRecord::Migration[6.1]
  def change
    rename_column :students , :name , :student_name
    
  end
end
