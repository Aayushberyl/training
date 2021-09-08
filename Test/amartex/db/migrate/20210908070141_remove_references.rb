class RemoveReferences < ActiveRecord::Migration[6.1]
  def change
  	remove_column :products , :customers_id
  	remove_column :customers , :products_id
  end
end
