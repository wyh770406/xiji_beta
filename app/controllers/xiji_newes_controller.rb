class XijiNewesController < ApplicationController
  def index
    @xiji_newes = XijiNewe.paginate(:all,
      :page => params[:page],
      :per_page => 12,:order=>'created_at desc')
  end

  def show

    @xiji_newe = XijiNewe.find(params[:id])
    @xiji_newe.view_count = @xiji_newe.view_count + 1
    @xiji_newe.save
    @view_count=@xiji_newe.view_count
  end
end