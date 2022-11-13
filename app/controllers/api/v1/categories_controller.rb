class Api::V1::CategoriesController < ApplicationController

# Obtiene las categorias
  def index
    @categorias = Category.all
    render json: @categorias
  end
# Muestra las categorias /categories/1.json
  def show
    @categoria = Category.find(params[:id])
    render json: @categoria.to_json(only: [:id, :nombre, :descripcion])
  end
  
# POST  /categories or /categories.json
def create
  @categoria = Category.create(category_params)
  if @categoria.valid?
    render json: @categoria, status: :created
  else
    render json: { errors: @categoria.errors.full_messages },
           status: :not_acceptable
  end

end

def update
  @categoria = Category.find(params[:id])
  @categoria.update(category_params)
  if @categoria.update(category_params)
    format.json { render :show, status: :ok }
  else
    format.json { render json: @categoria.errors, status: :unprocessable_entity }
  end
end

  def destroy
    @categoria.destroy
    if @categoria.destroyed?
      render json: { message: 'Categoria fue eliminada' }, status: :ok
    else
      render json: { errors: @categoria.errors.full_messages },
             status: :not_acceptable
    end
  end

  private
  
  def set_category
    @categoria = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:nombre, :descripcion)
  end

end
