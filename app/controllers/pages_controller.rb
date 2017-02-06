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
      flash[:notice] = t('.order_made')
      redirect_to :back
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
  		flash[:notice] = t('.contact_confirmed')
      redirect_to :back
  	else
  		render 'contact_us'

  	end
  end
  def sitemap
    redirect_to
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










