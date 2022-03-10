class Admin::DashboardController < ApplicationController
  def show
    # .count is total number
    @productcount = Product.count
    @categorycount = Category.count
  end
end
