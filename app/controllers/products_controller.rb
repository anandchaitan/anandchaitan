class ProductsController < InheritedResources::Base

  def create
    create!(:notice => "Great! Product has updated successfully.") { products_url }
  end

  def update
    update!(:notice => "Great! Product has updated successfully.") { products_url }
  end

  private

    def product_params
      params.require(:product).permit(:title, :description, :skucode, :price, :category_id)
    end


end
