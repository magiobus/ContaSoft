class MainController < ApplicationController

respond_to :html,:xls


  def index
  end

  def list
    @movements = Movement.order("movements.amount ASC")
    
     if !params[:id].nil?
        @movements = @movements.where(:account_id => params[:id])
        puts 'hola'
     end
    
    
    respond_with do |format|
    format.html do
      render :layout => false
    end
    format.xls do
      rows = Array.new



     @movements.collect do |movement|
        rows << {'Descripción' => movement.description,
                 'Cuenta' => movement.account.name, 
                 'Monto' => movement.amount,
   	             'Tipo' => movement.movement_type }                
      end
      column_order = ["Descripción", "Cuenta", "Monto","Tipo"]
      to_excel(rows, column_order, "Movmientos", "Movimientos")
    end
    end
    
  end
  
  def new
    @movement = Movement.new 
  end

  def create
  @movement = Movement.new(params[:movement])
  @movement.save
  if @movement.save
      redirect_to(:action => 'list')
  else
    render('new')
    end
  end
  
  
  def edit
      @movement = Movement.find(params[:id])
  end

  def update
      
      @movement = Movement.find(params[:id])
      if @movement.update_attributes(params[:movement])
      redirect_to(:action => 'list')
      else
         render('edit')
      end
 end
  
  def delete
    @movement = Movement.find(params[:id])
  end
  
  def destroy
    @movement = Movement.find(params[:id]).destroy
    redirect_to(:action => 'list')
  end
 
  
  
  
  

end
