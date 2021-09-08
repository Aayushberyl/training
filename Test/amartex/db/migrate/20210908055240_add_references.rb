class AddReferences < ActiveRecord::Migration[6.1]
  def change
  	add_reference :customers , :products
  	add_reference :products , :customers
  end
end
