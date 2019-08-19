class UsersController < ApplicationController
def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to  car_items_path
    flash[:notice] = "削除されました"
end



def user_params
	   	params.require(:user).permit(:name_first, :name_last, :post_code, :address, :phone, :quit_flag)
end

end
