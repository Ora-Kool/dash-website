class SessionController < ApplicationController
  def new
  end
  def create
    admin = Admin.find_by(name: params[:session][:name].downcase)

    if admin && admin.authenticate(params[:session][:password])
          log_admin(admin)
          params[:session][:remember_me] == '1' ? remember(admin) : forget(admin)
          redirect_to admin_dashboard_orders_path
    else
      flash.now[:notice] = 'wrong credentials'
      render 'new'
    end

  end

  def destroy
    admin_out if logged_admin?
    redirect_to(root_path)
  end

end
