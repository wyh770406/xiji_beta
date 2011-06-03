class RecentNewesController < ApplicationController
  def index
    @recent_newes = RecentNewe.paginate(:all,
      :page => params[:page],
      :per_page => 12,:order=>'created_at desc')
  end

  def show

    @recent_newe = RecentNewe.find(params[:id])
    @recent_newe.view_count = @recent_newe.view_count + 1
    @recent_newe.save
    @view_count=@recent_newe.view_count
  end
end