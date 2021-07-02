class ChangeColumnNames < ActiveRecord::Migration[6.1]
  def change
    rename_column :students , :student_name , :name
    rename_column :guardians , :guardian_name , :name
    rename_column :guardians , :guardian_contact , :contact
    rename_column :faculties , :faculty_name , :name
    rename_column :faculties , :faculty_salary , :salary
    rename_column :courses , :course_name , :name
    rename_column :courses , :course_fee , :fees
    rename_column :courses , :course_duration , :duration
    rename_column :certifications , :cert_name , :name
    rename_column :certifications , :cert_fees , :fees
    rename_column :certifications , :cert_duration , :duration
  end
end
