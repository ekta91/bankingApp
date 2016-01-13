class Banking

  attr_accessor :first_name, :last_name,:id,:pin

  def create(first_name,last_name,id,pin)
    @first_name = first_name
    @last_name = last_name
    @id = id
    @pin = pin

    puts "Enter first name"
    first_name= gets.chomp.to_s
    puts "Enter last name"
    last_name = gets.chomp.to_s
    puts "Enter id"
    id = gets.chomp.to_i
    puts "Enter pin"
    pin = gets.chomp.to_i
    puts " #{first_name} " " #{last_name} created an account with #{id} and #{pin}"

    person = Array.new

  end

  def login(id_number,pin_number)
    puts "Enter id"
    id_number = gets.chomp
    puts "Enter pin"
    pin_number = gets.chomp
    if id_number == id && pin_number == pin
      return make_transaction
    else
      puts "You entered wrong id and pin"
    end
  end

  def id_error
    "Access denied: incorrect Id."
  end


  def pin_error
    "Access denied: incorrect PIN."
  end

  def deposit(id_number,pin_number,amount)
    @balance = balance
    puts "Enter amount you want to deposit"
    amount =gets.chomp
    balance += amount
  end


  def make_transaction()
    puts "What you want to do"
    puts "Enter deposit if you want to deposit money"
    puts "Enter withdraw if you want to withdraw"
    answer = gets.chomp

    case answer
      when "deposit"
        banking.deposit.( " "," ", " ")
    end

  end

end

def deposit(id_number,pin_number,amount)
  @balance = balance
  puts "Enter amount you want to deposit"
  amount =gets.chomp
  balance += amount
end


def make_transaction()
  puts "What you want to do"
  puts "Enter deposit if you want to deposit money"
  puts "Enter withdraw if you want to withdraw"
  answer = gets.chomp

  case answer
    when "deposit"
      banking.deposit.( " "," ", " ")
  end

end

banking = Banking.new

loop do
  puts "What do you want to do"
  puts "1.Create account then enter create"
  puts "2.Login then enter login"
  puts "3.Make transaction then enter transaction"
  puts"4.Logout then enter logout"

  choice = gets.chomp

  case choice
    when "create"
      banking.create(" "," "," "," ")
    when "login"
      banking.login(" "," ")
    when "transaction"
      banking.make_transaction
  end

  puts "Do you want to continue? (y/n) "
  answer = gets.chomp.downcase
  break if answer == "n"

end










