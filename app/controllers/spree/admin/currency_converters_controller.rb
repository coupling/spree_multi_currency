class Spree::Admin::CurrencyConvertersController < Spree::Admin::ResourceController

  # update.wants.html { redirect_to collection_url }
  # create.wants.html { redirect_to collection_url }
  # destroy.wants.html { redirect_to collection_url }
  private
  def collection
    @collection = Spree::CurrencyConverter.page(params[:page]).per(15)
  end
end
