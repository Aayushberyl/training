class RenamingColumnToStudents < ActiveRecord::Migration[6.1]
  def change
    rename_column :students, :contact, :contact_no
  end
end
