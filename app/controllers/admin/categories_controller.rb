class Admin::CategoriesController < ApplicationController
  # Browsers tend to save Basic Auth credentials, Sensitive information is .env
  http_basic_authenticate_with name: "Jungle", password: "book"

  # Be careful of "Namespaces" we have same name of "category" and "admin/category"
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  # def destroy
  #   @category = Category.find params[:id]
  #   @category.destroy
  #   redirect_to [:admin, :categories], notice: 'Category deleted!'
  # end

  private

  def category_params
    # params all include
    params.require(:category).permit(
      :name
    )
  end

end
