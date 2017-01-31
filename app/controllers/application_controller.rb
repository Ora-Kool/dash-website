  class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   before_action :set_locale

  def set_locale
  	if cookies[:dash_horgerate] && I18n.available_locales.include?(cookies[:dash_horgerate].to_sym)
  		l = cookies[:dash_horgerate].to_sym
  	  else
  	  	l = "de"
  	  	cookies.permanent[:dash_horgerate] = l
  	end
  	I18n.locale = l
  end
end
