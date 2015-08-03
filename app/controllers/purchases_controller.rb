class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @purchase = Purchase.new
    @time = Time.now.strftime("%d/%m/%Y %H:%M")
  end

  def create
    purchase = Purchase.new(name: params[:purchase][:name], user_id: current_user.id)

    LoadLineItems.new(purchase: purchase, line_items: params[:line_item]).load_line_items

    if purchase.save
      redirect_to root_path
    else
      redirect_to new_purchase_path
    end
  end



  private

  def create_params
    params.require(:purchase).permit(:name).tap do |whitelisted|
      whitelisted[:line_item] = params[:line_item]
    end
  end
end
