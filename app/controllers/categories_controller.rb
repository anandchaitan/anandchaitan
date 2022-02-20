class CategoriesController < InheritedResources::Base

  def create
    create!(:notice => "Great! Category has created successfully.") { categories_url }
  end

  def update
    update!(:notice => "Great! Category has updated successfully.") { categories_url }
  end

  private

    def category_params
      params.require(:category).permit(:title, :description)
    end


end
