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
    redirect_to cars_path
end

def index
 	@makers = Maker.all
 	#binding.pry
end

def link

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
									    									:grade_id],
									    			equipments_attributes: [:id,
									    									:name,
									    									:grade_id,
									    									:_destroy,]])
end
end
