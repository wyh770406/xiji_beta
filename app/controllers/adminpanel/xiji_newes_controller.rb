class Adminpanel::XijiNewesController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    # @xiji_newes = XijiNewe.find(:all)
    @xiji_newes = XijiNewe.paginate(:all,
      :page => params[:page],
      :per_page => 10,:order=>'created_at desc')
  end

  def show
    @xiji_newe = XijiNewe.find(params[:id])
  end

  def edit
    @xiji_newe = XijiNewe.find(params[:id])
  end

  def update
    @xiji_newe = XijiNewe.find(params[:id])
    if @xiji_newe.update_attributes(params[:xiji_newe])
      flash[:notice] = "成功修改熙济新闻#{@xiji_newe.title}！"
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end

  def new
    @xiji_newe = XijiNewe.new
  end

  def create
    @xiji_newe = XijiNewe.new(params[:xiji_newe])
    if @xiji_newe.save

      flash[:notice] = "成功创建熙济新闻#{@xiji_newe.title}！"
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def destroy
    @xiji_newe = XijiNewe.find(params[:id])
    @xiji_newe.destroy

    flash[:notice] = "成功删除熙济新闻#{@xiji_newe.title}！"

    redirect_to :action => 'index'
  end
end