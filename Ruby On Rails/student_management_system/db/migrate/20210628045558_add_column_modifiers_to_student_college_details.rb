class AddColumnModifiersToStudentCollegeDetails < ActiveRecord::Migration[6.1]
  def change
    # add_column :student_college_details, :univroll, :string
    add_index :student_college_details, :univroll
  end
end
