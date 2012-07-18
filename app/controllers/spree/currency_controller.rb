class Spree::CurrencyController < Spree::BaseController
  def set
    if @currency = Spree::Currency.find_by_char_code(params[:id].to_s.upcase)
      session[:currency_id] = params[:id].to_s.upcase.to_sym
      Spree::Currency.current(@currency)
    else
      flash[:error] = t(:currency_not_found)
    end

    begin
      redirect_to :back
    rescue ActionController::RedirectBackError
      redirect_to root_path
    end
  end
end