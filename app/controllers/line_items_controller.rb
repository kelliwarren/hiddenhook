class LineItemsController < PublicController
  


  def create
    @product = Product.find(params[:product_id])
    @order = Order.find(session[:order_id])
    line_item = @order.line_items.build(params[:line_item])
    line_item.copy_product_attributes(@product)
    line_item.save
    redirect_to @product, notice: 'Added to order'

  end

end
