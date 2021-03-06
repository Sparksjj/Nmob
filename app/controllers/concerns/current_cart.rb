module CurrentCart extend ActiveSupport::Concern

  private
    def set_cart
        @cart = Cart.find(session[:cart_id])
        return @cart
        rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id 
        return @cart
    end
end