class ProductController < ApplicationController

	def form
		@product = Product.new
	end 

	def show
		@products = Product.all
	end

	def create
		@product = Product.new(product_params) 
		if @product.save
			redirect_to '/product/show'
		else
		  render :form
		end
	end

	def draft
		@product = Product.new(product_params)
		render :draft
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update(name: params[:product][:name] , description: params[:product][:description] , price: params[:product][:price])
		redirect_to '/product/show'
	end
	
	def destroy
		@product = Product.find(params[:id])
		if @product.destroy
			redirect_to '/product/show'
		else
			render plain: "@product.name cannot be deleted."
		end
	end

	def product_params
		params.require(:product).permit(:name, :description, :price)
	end

	def templates
		
		@a = params[:description]
		# render :partial => 'temp1'
		render template: "product/shem", :locals => {:resource => 'Some text'}
		# redirect_to '/product/show'
		# render partial: "temp1", :object => Product.all

		# render 'product/shem'
		# render :plain => "Hello World"
	end

end
