class Adminpanel::BasicKnowledgesController < ApplicationController
  before_filter :admin_required,:jquery_noconflict
  layout "admin"
  active_scaffold :basic_knowledges do |config|
    config.label = "基础知识"
    config.columns = [:title,:body]
    columns[:title].label = "标题"
    columns[:body].label = "内容"

    list.sorting = {:id => 'ASC'}
    config.columns[:body].form_ui = :textarea
    config.columns[:body].options = {:rows => 60, :cols => 100}
  end
end