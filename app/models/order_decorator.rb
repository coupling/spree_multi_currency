Spree::Order.class_eval do
  extend MultiCurrency
  multi_currency :item_total, :total,
                 :rate_at_date => lambda{ |t| t.created_at },
                 :only_read => true
end
