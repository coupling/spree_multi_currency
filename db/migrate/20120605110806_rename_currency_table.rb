class RenameCurrencyTable < ActiveRecord::Migration
  def change
    rename_table :currencies, :spree_currencies
  end
end
