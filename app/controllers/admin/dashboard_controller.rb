class Admin::DashboardController < ApplicationController
	before_action :logged_in_admin, only: [:orders, :contacts]
  def orders
  	@orders = Order.all
  end

  def contacts
  	@contacts = Contact.all
  end

  private
  def logged_in_admin
   	unless logged_admin?
   		flash[:notice] = "Access denied!"
   		redirect_to login_path
   	end
  end
end
