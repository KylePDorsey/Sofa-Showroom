class SofasController < ApplicationController
skip_before_action :verify_authenticity_token

	def homeindex
		@sofa = Sofa.all
		# @sofa_families = sofa_families
	end

	def new 
		@sofa = Sofa.new
	end

	def index
	  @sofa_families = Sofa.sofa_families
	  @sofa_configuration = Sofa.sofa_configuration
	  @sofa_fabric_type = Sofa.sofa_fabric_type
	  @sofa_fabric_style = Sofa.sofa_fabric_style
	  @sofa_leg_style = Sofa.sofa_leg_style
	  
	  @sofa = Sofa.where(nil)
	  filtering_params(params).each do |key, value|
		@sofa = @sofa.public_send(key, value.downcase) if value.present? && value != 'Any'
	  end
	end

	def create
		p sofa_params
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

	def filtering_params(params)
	  params.slice(:style_family, :configuration, :fabric_type, :fabric_style, :leg_style, :customer_id)
	end

	def sofa_params
		params.require(:sofa).permit(:avatar, :style_family, :configuration, :fabric_type, :fabric_style, :leg_style, :customer_id)
	end
end
