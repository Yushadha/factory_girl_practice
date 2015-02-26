class SupportController < ApplicationController

def create
	@support = Support.new support_params
		@support.save
		render text: "sorry Tam, no fancy redirect here"
	end
end

	private

	def support_params
		params.require(:support).permit(:contact_name, :contact_email, :department, :integer, :message)
	end

end
