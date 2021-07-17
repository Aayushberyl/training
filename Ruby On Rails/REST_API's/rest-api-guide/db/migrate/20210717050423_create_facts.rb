class CreateFacts < ActiveRecord::Migration[6.1]
  def change
    create_table :facts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :fact
      t.integer :likes

      t.timestamps
    end
  end
end
