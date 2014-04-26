class ProductosController < ApplicationController
  def index
  	@productos = Productos.all

  	respond_to do |format|
      format.html
      format.xml
    end
  end

  def new
    @productos = Productos.new
  end

  def create
    #render plain: params[:productos].inspect 
    @productos = Productos.new(productos_params)
    @productos.save 
    redirect_to @productos
  end

  public 
   def productos_params 
     params.require(:productos).permit(:folio, :titulo, :autor, :descripcion, :genero, :editorial, :status, :usuario, :ubicacion) 
   end
  
  def edit
     @productos = Productos.find(params[:id])

  end

  def update
     @productos = Productos.find(params[:id])
     @productos.update_attributes(productos_params)
  end
  def show
    @productos = Productos.find(params[:id])
    
  end

  def destroy
    @productos = Productos.find(params[:id])
    @productos.destroy
    
    respond_to do |format|
      format.html (redirect_to :action=>'index')
       
    end

  end
end
