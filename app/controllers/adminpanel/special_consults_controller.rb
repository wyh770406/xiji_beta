class Adminpanel::SpecialConsultsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  active_scaffold :special_consults do |config|
    config.label = "专家咨询"

    config.list.columns = [:name,:email,:mobile,:tel,:question,:answer,:show_flag]


    config.columns = [:name,:email,:mobile,:tel,:question,:answer,:show_flag]
    columns[:name].label = "姓名"
    columns[:email].label = "电子邮箱"
    columns[:mobile].label = "手机"
    columns[:tel].label = "固定电话"
    columns[:question].label = "留言"
    columns[:answer].label = "专家解答"
    columns[:show_flag].label = "过往解答是否显示"

    list.sorting = {:id => 'ASC'}
    config.columns[:question].form_ui = :textarea
    config.columns[:question].options = {:rows => 30, :cols => 100}

    config.columns[:answer].form_ui = :textarea
    config.columns[:answer].options = {:rows => 30, :cols => 100}

    config.columns[:show_flag].form_ui = :checkbox
  end
end
