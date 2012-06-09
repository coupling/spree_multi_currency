Spree::LineItem.class_eval do
  extend MultiCurrency
  multi_currency :price

  def raw_amount
    raw_price * quantity
  end
end