class StaticPagesController < ApplicationController
  
  def home
    @products = Product.all
    @categories = Category.all
  end
  
  
  def createOrder
    @orders = Order.last
  end
  
  def about
  end
  
  def category
    catName = params[:title]
    @products = Product.where("category like ? ", catName)
  end
  
  def paid
    # redirect_to "/cart/clear"
    @order = Order.find_by(id: params[:id])
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
  end
  
  def orderNumber
    @order = Order.find(params[:id])
    @order.update_attribute(:status, "Paid with paypal")
  end
  
  def help
     current_user.update_attribute :admin, true
  end
  
  def upgrade 
    @user = User.find_by(id: params[:id])
    @user.update_attribute(:admin, true)
    redirect_to "/"
  end
  
  def downgrade 
    @user = User.find_by(id: params[:id])
    @user.update_attribute(:admin, true)
    redirect_to "/"
  end
  
end