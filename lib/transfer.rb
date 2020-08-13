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
    if @sender.balance >= @amount && @status == "pending" && self.valid?
    #complete transaction
    @sender.balance -= @amount 
    @receiver.deposit(@amount)
    @status = "complete"
    else 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end 
  end 
    
  def reverse_transfer 
    @sender.deposit(@amount)
    @receiver.balance -= @amount
    @status = "reversed"
  end 
  
  
end 
