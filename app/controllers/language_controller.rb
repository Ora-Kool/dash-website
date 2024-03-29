class LanguageController < ApplicationController
	def change_locale
		l = params[:locale].to_s.strip.to_sym
		l = I18n.default_locale unless I18n.available_locales.include?(l)

		cookies.permanent[:dash_horgerate] = l
		redirect_to request.referer || root_url
	end
end
