class AddAdditionalFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :additional_address, :string
    add_column :users, :city, :string
    add_column :users, :region, :string
    add_column :users, :postal_code, :string
    add_column :users, :phone_number, :string
    add_column :users, :email_address, :string
    add_reference :users, :title, foreign_key: true
    add_reference :users, :country, foreign_key: true
  end
end
