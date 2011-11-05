class MainController < ApplicationController

respond_to :html,:xls
before_filter :load

def load
  @movements = Movement.all
  @movements = Movement.new
end






  def index
  end

  def list
    @movements = Movement.order("movements.amount ASC")
    
     if !params[:id].nil?
        @movements = @movements.where(:account_id => params[:id])
     end
    
    
    respond_with do |format|
    format.html do
      render :layout => false
    end
    format.xls do
      rows = Array.new
      cargo = 0
      abono = 0
      
      
      



     @movements.collect do |movement|
       
      if movement.movement_type == "Cargo"
        cargo = movement.amount
        else
        cargo = ''
      end
      
       if movement.movement_type == "Abono"
          abono = movement.amount
          else
          abono = ''
        end
      
        
        
        
        rows << {'Descripción' => movement.description,
                 'Cuenta' => movement.account.name,
                 'Cargo' => cargo, 
                 'Abono' => abono,
                 'monto' => movement.amount,
                 'tipo' => movement.movement_type
   	             }                
      end
      column_order = ["Descripción", "Cuenta", "Cargo","Abono","monto","tipo"]
      to_excel(rows, column_order,cargo,abono, "Movmientos", "Movimientos")
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
       flash[:notice] = "Successfully created post."
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
        flash[:notice] = "Successfully updated post."
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
     flash[:notice] = "Successfully Destroyed post."
    redirect_to(:action => 'list')
  end
 
  
  
  
  

end
