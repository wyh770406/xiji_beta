class ProductDetailsController < ApplicationController
  def index

  end

  def show
    @product_detail=ProductDetail.find(params[:id])


  end


end