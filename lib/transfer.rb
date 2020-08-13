class Transfer
  attr_accessor :transfer, :sender, :reciever, :status
  
  def initialize(transfer, sender, reciever)
    @transer = transfer 
    @sender = sender 
    @reciever = reciever 
    @status = "pending"
    @transfer_amount = []
  end
  
  
  
end 
