class Adminpanel::ProductDetailsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  active_scaffold :product_details do |config|
    config.label = "产品列表"

    config.list.columns = [:top_product,:name,:product_desc,:productimg]


    config.columns = [:top_product,:name,:product_desc,:productimg]
    columns[:name].label = "产品名称"
    columns[:product_desc].label = "产品说明"
    columns[:productimg].label = "产品图片"
  #  columns[:videoimg].label = "产品视频图片"


    list.sorting = {:id => 'ASC'}
    config.columns[:product_desc].form_ui = :textarea
    config.columns[:product_desc].options = {:rows => 60, :cols => 100}

    config.columns[:top_product].form_ui = :select
  #  config.columns[:videoimg].form_ui = :paperclip
    config.columns[:productimg].form_ui = :paperclip


  end
end
