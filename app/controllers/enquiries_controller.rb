class EnquiriesController < ApplicationController
def assessment
	@enquiry = Enquiry.new
	@user = current_user
end

def automobile
	@enquiry = Enquiry.new
	@user = current_user
end

def insurance
	@enquiry = Enquiry.new
	@user = current_user
end

def repair
	@enquiry = Enquiry.new
	@user = current_user
end
def create
	@enquiry = Enquiry.new(enquiry_params)
	@enquiry.user_id = current_user.id
		if @enquiry.save
			redirect_to root_path
		else
			render :insurance
		end
end

private
	def enquiry_params
	   	params.require(:enquiry).permit(:id,:number,:user_id, :area,:mycar_name,:comment,:insurance_select,:mycar_maker,:mycar_distance,:mycar_year)
	end
end
