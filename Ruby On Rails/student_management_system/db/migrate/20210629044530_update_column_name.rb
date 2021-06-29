class UpdateColumnName < ActiveRecord::Migration[6.1]
  def change
    remove_column :students , :course_name , :course_id
    remove_column :faculties , :course_name , :course_id
  end
end
