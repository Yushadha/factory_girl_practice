class SupportRequestsController < ApplicationController
  
  def index
  	@support_requests = SupportRequest.all
  end

  def new
   @support_request = SupportRequest.new
  end

  def create
  	@support_request = SupportRequest.new(support_request_params)
  	if @support_request.save
  		redirect_to support_requests_path
  	else
  		render :new
  	end
  	# redirect_to support_requests_path
  end

  def show
  end

  def edit
  	find_support_request
  end

  def update
  	find_support_request
  	if @support_request.update_attributes(support_request_params)
  		redirect_to support_requests_path
  	else
  		render :edit
  	end
  end

  def destroy
  	find_support_request
  	if @support_request.destroy
  		redirect_to support_requests_path
  	else
  		render :index
  	end
  end

  private
  
  def support_request_params
  	params.require(:support_request).permit([:name, :email, :department, :message, :done])
  end

  def find_support_request
  	@support_request = SupportRequest.find(params[:id])
  end
end

