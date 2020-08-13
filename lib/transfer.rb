class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
  @sender = sender 
  @receiver = receiver
  @amount = amount
  @status = "pending"
  end 
  
  def valid?
    @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction
    #check if sender has enough money to send 
    if @sender.balance >= @amount && @status = "pending"
      #complete transaction
      @receiver += @amount
      @status = "complete"
      else 
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end 
      
  end 

  
  
  
  
end 
