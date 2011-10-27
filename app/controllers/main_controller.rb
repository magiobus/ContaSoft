class MainController < ApplicationController

respond_to :html,:xls


  def index
  end

  def list
    @movements = Movement.order("movements.amount ASC")
    
    
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
      redirect_to(:action => 'list', :id => @movement.id)
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
