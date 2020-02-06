class DealersController < ApplicationController

  def new
   @post = Post.find(params[:post_id])
   @dealer = Dealer.new
  end

  def create
    @dealer = Dealer.new(dealer_params)
    @post = @dealer.post
    @dealer.save
    redirect_to root_path
  end

  private

  def dealer_params
    params.require(:dealer).permit(:name, :kananame, :company_id, :post_id)
  end
end
