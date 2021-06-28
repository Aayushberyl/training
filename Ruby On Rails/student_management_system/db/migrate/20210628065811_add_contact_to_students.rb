class AddContactToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :contact, :int
  end
end
