class AddColumnToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students , :active , :boolean
  end
end
