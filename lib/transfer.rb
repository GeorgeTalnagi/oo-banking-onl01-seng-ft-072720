class Transfer
  attr_accessor :sender, :receiver, :transfer_amount, :status
  
  def initialize(sender, receiver, transfer_amount)
  @sender = sender 
  @receiver = receiver
  @transfer_amount = 50
  @status = "pending"
  
  
  end 
  

  
  
  
  
end 
