class BankingSystem 
    puts "'Good Evening ',Welcome to our Banking System !"
  def initialize(amount,pin)
    @amount=amount
    @pin=pin
  end 
  def pincode
    puts "enter your pin"
    @p=gets.chomp.to_i
   check_pin
  end 
  def check_pin 
    if @p==@pin
        user_input 
    elsif @p!=@pin
       puts "enter a valid pin"
       pincode
    end
  end
  def user_input 

    puts "For continue with us , please follow the instruction given below !"
    puts " For deposit press 'd'"
    puts " For withdraw press 'w'"
    puts " For current balance press 's'"
    puts " For exit press 'any key except these key given above'"
     
    puts "press key "
     input=gets.chomp.to_s 
   
    if input=='d'
        deposit
    elsif input=='w'
        withdraw
    elsif input=='s'
        show_balance
    else 
        exit
    end
 end

  def deposit 
     puts "enter your amount for deposit "
      a=gets.to_i 
      if a<0 
        puts "please enter a valid amount "
        deposit
      elsif a>0
        add=@amount+a 
        puts "your current balance is #{add}"
      end
      @amount=add
      user_input 
    
  end
  def withdraw
    puts "enter your amount for withdraw "
    b=gets.to_i 
    if b<0 
        puts "please enter a valid amount "
        deposit
    elsif b>@amount 
        puts "please enter a valid amount "
        deposit
    elsif b>0 && b<@amount
        sub=@amount-b
        puts "your current balance is #{sub}"
    end
    @amount=sub
    user_input 
  end 
  def show_balance 
    puts @amount
    user_input 
  end 
  def exit 
    puts "by! Have a good day"
  end
end

obj=BankingSystem.new(1000,123)

obj.pincode
