class Adminpanel::QuestionTypesController < ApplicationController
  before_filter :admin_required,:jquery_noconflict
  layout "admin"
  active_scaffold :question_types do |config|
    config.label = "问题类别"
    config.columns = [:name]
    columns[:name].label = "名称"
    config.nested.add_link("专家解答列表", [:special_consults])
    config.columns[:special_consults].search_sql = "CONCAT(special_consults.name,special_consults.question)"
    config.search.columns << :special_consults
  end
end