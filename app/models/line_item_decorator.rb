Spree::LineItem.class_eval do
  extend MultiCurrency
  multi_currency :price

  def raw_amount
    read_attribute(:price) * quantity
  end
end