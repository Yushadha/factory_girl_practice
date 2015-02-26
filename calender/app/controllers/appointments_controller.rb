class AppointmentsController < ApplicationController

	def index
		@appointments = Appointment.all
	end

	def new
		@appointment = Appointment.new due_date: (Time.now + 1.day)
	end

	def create
		#byebug
		@appointment = Appointment.new appointment_params
		@appointment.save
		if @appointment.save
		redirect_to appointments_path
		#render text: params
		else
			render :new
		end
	end

	def edit
		@appointment = Appointment.find params[:id]
	end

	# def update
	# 	@appointment = Appointment.find params[:id]
	# 	 if @appointment.update

	private

	def appointment_params
		params.require(:appointment).permit(:due_date, :duration, :task, :details, :person)
	end


end