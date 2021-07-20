class AddOmniauthToLogIn < ActiveRecord::Migration[6.1]
  def change
    add_column :log_ins, :provider, :string
    add_column :log_ins, :uid, :string
  end
end
