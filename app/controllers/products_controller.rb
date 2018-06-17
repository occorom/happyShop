class ApplicationController < ActionController::Base
	include ActionController::MimeResponds
	#include Response
end

class ProductsController < ApplicationController
	#before_action :set_category
	before_action :set_product, only: [:show, :update, :destroy]

	# GET /categories/:category_id/products or /products
	def index
		
	    @min_prices = params[:min_prices]
	    @max_prices = params[:max_prices] 
	    if @min_prices
	    	@products = Product.none
			@min_prices.zip(@max_prices).each do |min_price, max_price|
				@price_products = Product.min_max_prices(min_price, max_price)
				@products = @products.or(@price_products)
			end
		end

		if @products.nil?
			@products = Product.filter(params.slice(:category)).order_price(params[:order])
		else
			@products = @products.filter(params.slice(:category)).order_price(params[:order])
		end
		if params[:page]
	      @products = @products.page(params[:page]).per(9)    
	    else
	      @products = @products.page(1).per(9)
	    end

	    respond_to do |format|
			format.js  { render 'index.js.erb' }
			format.html
		end
	end

	def search
		@products = Product.filter(params.slice(:category, :min_price, :max_price)).order_price(params[:order])
	    render html: @products 
	end

	# GET /categories/:category_id/products/:id
	def show
		@product
	end

	# POST /categories/:category_id/products
	def create
		@category.products.create!(product_params)
		json_response(@category, :created)
	end

	# PUT /categories/:category_id/products/:id
	def update
		@product.update(product_params)
		head :no_content
	end

	# DELETE /categories/:category_id/products/:id
	def destroy
		@product.destroy
		head :no_content
	end

	private

	def product_params
		params.permit(:id, :name, :min_price, :max_price, :category, :order, :page)
	end

	def set_product
		@product = Product.find(params[:id])
	end

	def set_category_product
		@product = @category.products.find_by!(id: params[:id]) if @category
	end

	# A list of the param names that can be used for filtering the Product list
	def filtering_params(params)
		params.slice(:category)
	end
end
