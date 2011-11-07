class Movement < ActiveRecord::Base
	has_one :account
	belongs_to :account
	
  
  
	
	validates_presence_of :description, :message => "No Puede estar Vacio"
	validates_presence_of :movement_type , :message => "No Puede estar  Vacio"
	validates_presence_of :account_id, :message => "No Puede estar Vacio"
	validates_presence_of :amount , :message => "No Puede estar Vacio"
	validates_numericality_of :amount, :message => "Tiene que ser Valor Numerico"
	

end
