class AddApartmentIdToTennant < ActiveRecord::Migration
  def change
    add_column :tennants, :apartment_id, :integer
  end
end
