class ChangeColumnDatatype < ActiveRecord::Migration[6.1]
  def change
    change_column :games , :launched , :integer
    change_column :games , :version , :float
  end
end
