class SofasController < ApplicationController

	def homeindex
		@sofa = Sofa.all
	end

	def new 
		@sofa = Sofa.new
	end

	def create
		if logged_in?
			@sofa = Sofa.new(sofa_params)
			if @sofa.save
				redirect_to root_path, notice: "Sofa successfully created."
			else
				render :new
			end
		end

	end

	private

	def sofa_params
		params.require(:sofa).permit(:style_name, :configuration, :fabric_type, :fabric_style, :leg_style, :customer_id)
	end
end