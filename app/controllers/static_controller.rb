class StaticController < PublicController

  def index
    @products = Product.all
  end
end
