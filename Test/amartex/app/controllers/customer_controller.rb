class CustomerController < ApplicationController
	
	def form
		@customer = Customer.new
	end 

	def show
		@customers = Customer.all
	end

	def create
		@customer = Customer.new(customer_params) 
		if @customer.save
			redirect_to '/customer/show'
		else
		  render :form
		end
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])
		@customer.update(name: params[:customer][:name] , contact: params[:customer][:contact])
		redirect_to '/customer/show'
	end
	
	def destroy
		@customer = Customer.find(params[:id])
		if @customer.destroy
			redirect_to '/customer/show'
		else
			render plain: "@customer.name cannot be deleted."
		end
	end

	def customer_params
		params.require(:customer).permit(:name, :age, :contact)
	end

end
