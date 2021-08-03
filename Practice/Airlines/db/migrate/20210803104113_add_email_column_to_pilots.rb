class AddEmailColumnToPilots < ActiveRecord::Migration[6.0]
  def change
    add_column :pilots , :email , :string
  end
end
