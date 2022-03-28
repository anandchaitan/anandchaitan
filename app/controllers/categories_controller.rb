class CategoriesController < InheritedResources::Base
  
  def create
    create!(:notice => "Great! Category has created successfully.") { categories_url }
  end

  def update
    update!(:notice => "Great! Category has updated successfully.") { categories_url }
  end

  def import
    Category.import(params[:import][:category_csv])
    redirect_to categories_path
  end

  private

    def category_params
      params.require(:category).permit(:title, :description)
    end
end
