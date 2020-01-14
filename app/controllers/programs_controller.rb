class ProgramsController < ApplicationController
  # def  index
  #   @programs = Program.new
  # end

  # def  new
  #   @program = Program.new
  # end

  # def  create
  #   @program = Program.new(program_params)
  #   if @program.present?
  #     @program.save
  #     redirect_to new_program_path
  #     flash[:notice] = "情報が登録できました"
  #   else
  #     redirect_to root_path
  #     flash[:alert] = "登録に失敗しました"
  #   end
  # end

  # private

  #   def program_params
  #     params.require(:program).permit(:software_name, :user_id, :post_id).merge(user_id: current_user.id)
  #   end
end
