# This controller handles the login/logout function of the site.  
class SessionsController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  layout false
  # render new.erb.html
  def new
  end

  def create
    logout_keeping_session!
    user = User.admin_authenticate(params[:name], params[:password])
    if user
      # Protects against session fixation attacks, causes request forgery
      # protection if user resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset_session
      self.current_user = user
      new_cookie_flag = (params[:remember_me] == "1")
      handle_remember_cookie! new_cookie_flag
      redirect_back_or_default({ :controller => :admin, :action => :index })
      flash[:notice] = "成功登录"
    else
      note_failed_signin
      @email       = params[:email]
      @remember_me = params[:remember_me]
      render :action => 'new'
    end
  end

  def destroy
    logout_killing_session!
    flash[:notice] = "你已登出."
    redirect_back_or_default({:controller => 'sessions', :action => 'new'})
  end

protected
  # Track failed login attempts
  def note_failed_signin
    flash[:error] = "登录失败"
    logger.warn "Failed login for '#{params[:login]}' from #{request.remote_ip} at #{Time.now.utc}"
  end
end
