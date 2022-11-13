class Api::V1::ProductsController < ApplicationController
	
	
	def index
		@productos = Product.all
		render json: @productos
	end

	def show
     @producto = Product.find(params[:id])
   	 render json: @producto.to_json(only: [:nombre, :cantidad, :stock, :precio, :descripcion, :imagen, :categories_id])
  	end

	def create
		@producto = Product.create(product_params)
			if @producto.valid?
	      render json: @producto, status: :created
	    else
	      render json: { errors: @producto.errors.full_messages },
	             status: :not_acceptable
	    end
  	end

	def update
		@producto = Product.find(params[:id])
    	@producto.update(product_params)
		if @producto.update(product_params)
      format.json { render :show, status: :ok }
    else
      format.json { render json: @producto.errors, status: :unprocessable_entity }
    end
  end

	 def destroy
    @productos = Product.all
    @producto = Product.find(params[:id])
    @producto.destroy
    if @producto.destroyed?
      render json: { message: 'El producto fue eliminado' }, status: :ok
    else
      render json: { errors: @producto.errors.full_messages },
             status: :not_acceptable
    end
  end

	private

	def product_params
		params.permit(:nombre, :cantidad, :stock, :precio, :descripcion, :imagen, :categories_id)

	end

	#def set_categories
	#	@categorias = Category.all
	#end
end