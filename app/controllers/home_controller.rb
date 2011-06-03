class HomeController < ApplicationController
  def index
    @top_product = TopProduct.find_by_name("呼吸机系列")

    @home_prduct_details=ProductDetail.find_all_by_top_product_id(@top_product.id)#ProductDetail.find(:all,:conditions=>["top_product_id=?",@top_product.id],:limit=>4)
    @home_videopdf_downloads = VideopdfDownload.find_all_by_download_type("video")
  end
end
