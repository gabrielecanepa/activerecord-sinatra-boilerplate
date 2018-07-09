class RenameCityToAddress < ActiveRecord::Migration[5.1]
  rename_column :restaurants, :city, :address
end
