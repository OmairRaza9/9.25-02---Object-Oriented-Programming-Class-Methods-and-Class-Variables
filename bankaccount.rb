class BankAccount

    @@interest_rate = interest_rate
    @@accounts =

  def initialize
    @balance = 0
  end


  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
  #6 above

  def self.create
    new_account = BankAccount.new
    @@accounts << new_account
  end


  def self.total_funds
    @@accounts.each do |account|
      account.deposit(100)
    end
  end
#above is 8
#reader writter methods, and how to deinfe them. loops
  def self.interest_time
  end

  Add a class method called interest_time that iterates through all accounts
  and increases their balances according to @@interest_rate.
  def interest_time
    @@accounts.each do |interest|
      interest.deposit(2)
      #assuming a 2% interest on 100 bucks
    end
  end

end


# Add a class method called create that calls BankAccount.new and adds the new object to @@accounts so that
# we can find it again in the future. This method should return the new account object.
# This needs to be a class method because at the time we run it there is no single,
# specific account object that we are working on.
#   @instance variable
#   @@class variable
# self. is to make a class
