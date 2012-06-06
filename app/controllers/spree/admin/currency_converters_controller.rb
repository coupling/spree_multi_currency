class Spree::Admin::CurrencyConvertersController < Spree::Admin::ResourceController

  private
  def collection
    @collection = Spree::CurrencyConverter.page(params[:page]).per(15)
  end
end
