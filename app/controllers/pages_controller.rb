class PagesController < ApplicationController
  def home
  end

  def about_us
  end

  def categories
  end

  def products330
    
  end

  def bottle_drinks
    
  end
  def energy_drinks
    
  end
  def beer
    
  end
  def mineral_water
    
  end
  def spirit_alc
    
  end
  def order_now
    @order = Order.new
  end
  def place_order
    @order = Order.new(order_params)
    if @order.save
      flash[:success] = 'thanks, your order has being placed!'
      redirect_to order_now
    else
      render 'order_now'
    end
  end

  def contact_us
  	 @contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
  	if @contact.save
  		flash[:success] = 'thanks for contacting us'
      redirect_to contact_url
  	else
  		render 'contact_us'

  	end
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :surname,
                                    :email, :phone_number,
                                    :subject, :content)
  end

  def order_params
    params.require(:order).permit(:name_or_business, :email,
                                  :phone, :message)
        
  end
end










