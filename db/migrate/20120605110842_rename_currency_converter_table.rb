class RenameCurrencyConverterTable < ActiveRecord::Migration
  def change
    rename_table :currency_converters, :spree_currency_converters
  end
end
