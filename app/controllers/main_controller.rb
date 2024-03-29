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
      sumacargos = 0
      sumaabonos = 0
      balancepos = 0
      balanceneg = 0
      
      
      @movements.collect do |movement|
       
      if movement.movement_type == "Cargo"
        cargo = movement.amount
        cargo = (cargo*100).round / 100.0
        sumacargos += cargo
        sumacargos = (sumacargos*100).round / 100.0
        else
        cargo = ''
      end
      
       if movement.movement_type == "Abono"
          abono = movement.amount
          abono = (abono*100).round / 100.0
          sumaabonos +=  abono 
          sumaabonos = (sumaabonos*100).round / 100.0
          else
          abono = ''
        end
        
        if (sumacargos-sumaabonos) > 0 
          balancepos = sumacargos-sumaabonos
          balancepos = (balancepos*100).round / 100.0
          
        else 
          balancepos = ''
        end  
         
         if (sumacargos-sumaabonos) < 0 
           balanceneg = sumacargos-sumaabonos
           balanceneg = (balanceneg*100).round / 100.0
         else 
           balanceneg = ''
         end
        
       
        
       
        
       rows << {'Descripción' => movement.description,
                 'Cuenta' => movement.account.name,
                 'Cargo' => cargo, 
                 'Abono' => abono,
                 'creacion' => movement.created_at
                  }                
      end
      column_order = ["Descripción", "Cuenta", "Cargo","Abono",'creacion']
      to_excel(rows, column_order,cargo,abono,sumacargos,sumaabonos,balancepos,balanceneg, "Movmientos", "Movimientos")
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
       flash[:notice] = "Movimiento Creado"
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
        flash[:notice] = "Movimiento Actualizado"
        redirect_to(:action => 'list')
      
      else
         render('edit')
      end
  end
  
  def delete
    
  end
  
  def destroy
    @movement = Movement.find(params[:id]).destroy
     flash[:notice] = "Movimiento Borrado"
    redirect_to(:action => 'list')
  end
 
  
  
  
  

end
