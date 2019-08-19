class EnquiriesController < ApplicationController
def assessment
	
end

def automobile
	
end

def insurance
	@enquiry = Enquiry.new
	@user = current_user
end

def repair
	
end
def create
	@enquiry = Enquiry.new(enquiry_params)
	@enquiry.user_id = current_user.id
		if @enquiry.save
			redirect_to car_items_path
		else
		p	@enquiry.errors.full_messages
			render :insurance
		end
end

private
	def enquiry_params
	   	params.require(:enquiry).permit(:id,:mycar_maker,:mycar_name,:mycar_distance,:mycar_year,:insurance_select, :user_id , :area)
	end
end
