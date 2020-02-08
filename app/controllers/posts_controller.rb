class PostsController < ApplicationController
  def  index
    @posts = Post.includes(:user).order('created_at DESC').page(params[:page]).per(10)
  end

  def search
    @posts = Post.search(params[:search])
  end

  def  new
    @post = Post.new
    dealers = @post.build_dealer
    programs = @post.programs.build
    products = programs.products.build
  end

  def  create
    @post = Post.new(post_params)
    @post.save!
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    # @dealer = Dealer.find(@post.post_id)
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to root_path
  end

  private

    def post_params
      params.require(:post).permit(:facility_name, :address, :tell, :registration_date, :estimate_sheet, :delivery_date, :delivery_note, :postal_code, :kananame, :user_id, dealer_attributes:[:name, :kananame, :company_id, :post_id, :_destroy, :id], programs_attributes:[:software, :user, :post_id, :_destroy, :id,  products_attributes:[:thing, :category_id, :model_number, :program_id, :_destroy, :id]]).merge(user_id: current_user.id)
    end
end