class AddForeignKeyToCustomers < ActiveRecord::Migration[6.1]
  def change
  	add_reference :customers , :product
  end
end
