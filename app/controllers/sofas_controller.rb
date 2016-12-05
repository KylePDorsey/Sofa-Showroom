class SofasController < ApplicationController

	def homeindex
		@sofa = Sofa.all
	end
	
	def new 
		@sofa = Sofa.new
	end

	# def create
	# 	if logged_in?
	# 		@sofa = Sofa.find_by_id()
	# 	end

	# end
end