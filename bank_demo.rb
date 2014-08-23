class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance = 100)
        @name = name
        @balance = balance
    end
    
    private 
    def pin
        @pin = 1234
    end
    
    def pin_error
        "Access denied: incorrect PIN."
    end
    
    public 
    def display_balance(pin_number)
        if pin_number == pin
            puts "Balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    def withdraw(pin_number, amount)
        if pin == pin_number and amount <= @balance
            @balance -= amount
            puts "Withdraw #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    def deposit(pin_number, amount)
        if pin == pin_number
            @balance += ampint
            puts "Deposit #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
end

class CheckingAccounts < Account
end
class SavingAccounts < Account
end
checking_account = Account.new(123)