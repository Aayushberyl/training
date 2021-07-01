class CreateGuardians < ActiveRecord::Migration[6.1]
  def change
    create_table :guardians do |t|
      t.string :guardian_name
      t.bigint :guardian_contact
      t.belongs_to :student
      t.timestamps
    end
  end
end
