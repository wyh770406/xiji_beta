class Adminpanel::VideopdfDownloadsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  active_scaffold :videopdf_downloads do |config|
    config.label = "下载中心"

    config.list.columns = [:name,:videopdf_desc,:download_type,:videopdf,:videoimg]


    config.columns = [:name,:videopdf_desc,:download_type,:videopdf,:videoimg]
    columns[:name].label = "名称"
    columns[:videopdf_desc].label = "说明"
    columns[:download_type].label = "类型"
    columns[:videopdf].label = "视频或文本"
    columns[:videoimg].label = "视频图片"


    list.sorting = {:id => 'ASC'}
    config.columns[:videopdf_desc].form_ui = :textarea
    config.columns[:videopdf_desc].options = {:rows => 60, :cols => 100}

    config.columns[:download_type].form_ui = :select
    config.columns[:download_type].options = {:options => VideopdfDownload::DOWNLOAD_TYPE.map(&:to_sym)}
    config.columns[:videopdf].form_ui = :paperclip
    config.columns[:videoimg].form_ui = :paperclip

  end
end
