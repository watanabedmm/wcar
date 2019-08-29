class CarItemsController < ApplicationController
def new
    @car_item = CarItem.new
end

def create
    @car_item = CarItem.new(car_item_params)
    @car_item.save
     #binding.pry
    redirect_to cars_path
end

def index
 	@maker = Maker.find(params[:id])
 	@user = current_user
end

def show
	@car_item = CarItem.find(params[:id])
	@eqipment = Equipment.find(params[:id])
	@enquiry = Enquiry.new
	@user = current_user
end


def car_item_params
    params.require(:car_item).permit(:id,
									:year,
									:distance,
									:inspection,
									:color,
									:price,
									:image,
									:grade_id,
									:car_id,
									:maker_id,
									:user_id,
									equipments_attributes: [:id,
															:name,
					    									:grade_id,
					    									:_destroy,])
end
end




