class CreateFaculties < ActiveRecord::Migration[6.1]
  def change
    create_table :faculties do |t|
      t.integer :faculty_id
      t.string :faculty_name
      t.integer :faculty_salary
      t.string :faculty_course

      t.timestamps
    end
  end
end
