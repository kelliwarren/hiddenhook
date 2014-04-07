class ProductsController < Public Controller

  def show
    @product = Product.find(params[:id])
    @line_item = LineItem.new
  end


end
