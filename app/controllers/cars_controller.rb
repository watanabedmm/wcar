class CarsController < ApplicationController

def new
    @car = Car.new
       disc = @car.grades.build
       disc.car_items.build
end
def create
    @car = Car.new(car_params)
    @car.save
     #binding.pry
    redirect_to car_items_path
end

def car_params
    params.require(:car).permit(:id,
    							:name,
    							:maker_id,
    							grades_attributes: [:id,
    												:name,
    												:displacement,
				    								:fixed_number,
				    								:car_id,
				    								:shift,
				    								car_items_attributes: [:id,
				    														:year,
									    									:distance,
									    									:inspection,
									    									:color,
									    									:price,
									    									:image_id,
									    									:grade_id]])
  end
end
