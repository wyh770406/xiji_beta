class ProductsController < ApplicationController
  def index
    @top_product=TopProduct.find(:first)
    @product_details = ProductDetail.paginate(:all,
      :conditions=>["product_details.top_product_id=?",@top_product.id],
      :page => params[:page],
      :per_page => 12,:order=>'created_at desc')
   #   @top_product.product_details
  end



  def show_cat
    @top_product=TopProduct.find(params[:id])
    @product_details = ProductDetail.paginate(:all,
      :conditions=>["product_details.top_product_id=?",@top_product.id],
      :page => params[:page],
      :per_page => 12,:order=>'created_at desc')
      #@top_product.product_details
  end

  def search
    @query_value = params[:keyval].strip

    @product_details = ProductDetail.paginate(:all,
      :conditions=>["product_details.name like #{ProductDetail.quote_value('%%'+@query_value+'%%')} or product_details.product_desc like #{ProductDetail.quote_value('%%'+@query_value+'%%')}"],
      :page => params[:page],
      :per_page => 12,:order=>'created_at desc')
  end
end