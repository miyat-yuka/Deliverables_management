class PostsController < ApplicationController
  def  index
    @posts = Post.includes(:user).order('created_at DESC')
    @programs = Program.includes(:user).order('created_at DESC')
  end

  def search
    @posts = Post.search(params[:search])
  end

  def  new
    @post = Post.new
    programs = @post.programs.build
    hards = programs.hards.build
    products = hards.products.build
  end

  def  create
    @post = Post.new(post_params)
    @post.save
  end

  def show
    @post = Post.find(params[:id])
    @program = Program.find(params[:id])
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to root_path
  end

  private

    def post_params
      params.require(:post).permit(:facility_name, :address, :tell, :registration_date, :estimate_sheet, :delivery_date, :delivery_note, :postal_code, :dealer, :user_id, programs_attributes:[:software, :user, :post_id,  products_attributes:[:thing, :category_id, :model_number, :user_id, :_destroy, :id]]).merge(user_id: current_user.id)
    end
end