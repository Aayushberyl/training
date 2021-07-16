class AddOmniauthToSignUp < ActiveRecord::Migration[6.1]
  def change
    add_column :sign_ups, :provider, :string
    add_column :sign_ups, :uid, :string
  end
end
