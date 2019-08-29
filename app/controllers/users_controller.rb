class UsersController < ApplicationController
def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to  car_items_path
    flash[:notice] = "削除されました"
end
def edit
		@user = User.find(params[:id])
	end

	def update
  	@user = User.find(params[:id])
	  	if @user.update(user_params)
			redirect_to items_path(@user.id)
		else
			render :edit
		end
  	end



def user_params
	   	params.require(:user).permit(:name_first, :name_last, :post_code, :address, :phone, :quit_flag)
end

end
