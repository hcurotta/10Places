class AddAddressAndCityToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :address, :string
    add_column :venues, :city, :string
  end
end
