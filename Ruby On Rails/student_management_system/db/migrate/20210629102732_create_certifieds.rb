class CreateCertifieds < ActiveRecord::Migration[6.1]
  def change
    create_table :certifieds do |t|
      t.belongs_to :certification
      t.belongs_to :student

      t.timestamps
    end
  end
end
