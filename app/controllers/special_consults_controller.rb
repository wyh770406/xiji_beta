class SpecialConsultsController < ApplicationController
  def new
    @special_consult = SpecialConsult.new
    #@question_types = QuestionType.find(:all)
  end

  def create

    @special_consult = SpecialConsult.new(params[:special_consult])

    success = @special_consult && @special_consult.valid?

    if success && @special_consult.save && @special_consult.errors.empty?
      redirect_to :action=>"new"
      flash[:notice] = "提交成功"
    else
      flash[:error]  = "提交失败"
      render :action=>"new"

    end
  end

  def answer_list
    @special_consults = SpecialConsult.paginate(:all,
      :conditions=> ["show_flag = ?",true],
      :page => params[:page],
      :per_page => 10,:order=>'created_at desc')
      #SpecialConsult.find_all_by_(true)
  end
end