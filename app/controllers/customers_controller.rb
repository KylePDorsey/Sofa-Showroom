class CustomersController < ApplicationController


	def new
		@customer = Customer.new
	end

	def create
		if logged_in?
			@customer = Customer.new(customer_params)
			@customer.update_attributes(user_id: current_user.id)
			if @customer.save
				redirect_to root_path, notice: "Customer successfully created."
			end
		end
	end


  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name)
  end
end