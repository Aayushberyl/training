class CustomerController < ApplicationController
	
	def form
		@customer = Customer.new
	end 

	def show
		@customers = Customer.all
	end

	def create
		@customer = Customer.new(customer_params)
			@customer.created_at = Time.zone.now.localtime
			@customer.save
			redirect_to '/customer/show'
	end

	def draft
		@customer = Customer.new(customer_params)
		render :draft
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])
		if published?
			@customer.updated_at = Time.zone.now.localtime
			@customer.update(name: params[:customer][:name] , contact: params[:customer][:contact] , product_id: params[:customer][:product_id])
			redirect_to '/customer/show'
		else
			render plain: "Data Cannot Be Unpublished" 
		end
	end

	def temp1
		render :temp1
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
		params.require(:customer).permit(:name, :age, :contact, :product_id)
	end

	def published?
		params[:commit]	== "Create" || params[:commit] == "Update"
	end

	def save_as_draft?
		params[:commit] == "Save as Draft"
	end

end
