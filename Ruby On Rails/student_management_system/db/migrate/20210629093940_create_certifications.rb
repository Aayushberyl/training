class CreateCertifications < ActiveRecord::Migration[6.1]
  def change
    create_table :certifications do |t|
      t.string :cert_name
      t.integer :cert_fees
      t.integer :cert_duration
      t.timestamps
    end
  end
end
