class Adminpanel::FrequentAsksController < ApplicationController
  before_filter :admin_required,:jquery_noconflict
  layout "admin"
  active_scaffold :frequent_asks do |config|
    config.label = "常见问答"
    config.columns = [:question,:answer]
    columns[:question].label = "问题"
    columns[:answer].label = "答案"

    list.sorting = {:id => 'ASC'}
    config.columns[:answer].form_ui = :textarea
    config.columns[:answer].options = {:rows => 30, :cols => 100}
  end
end