class Adminpanel::RecentNewesController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    # @recent_newes = RecentNewe.find(:all)
    @recent_newes = RecentNewe.paginate(:all,
      :page => params[:page],
      :per_page => 10,:order=>'created_at desc')
  end

  def show
    @recent_newe = RecentNewe.find(params[:id])
  end
  
  def edit
    @recent_newe = RecentNewe.find(params[:id])
  end

  def update
    @recent_newe = RecentNewe.find(params[:id])
    if @recent_newe.update_attributes(params[:recent_newe])
      flash[:notice] = "成功修改资讯#{@recent_newe.title}！"
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end

  def new
    @recent_newe = RecentNewe.new
  end

  def create
    @recent_newe = RecentNewe.new(params[:recent_newe])
    if @recent_newe.save

      flash[:notice] = "成功创建资讯#{@recent_newe.title}！"
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def destroy
    @recent_newe = RecentNewe.find(params[:id])
    @recent_newe.destroy

    flash[:notice] = "成功删除资讯#{@recent_newe.title}！"

    redirect_to :action => 'index'
  end
end