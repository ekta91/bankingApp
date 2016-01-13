class Profile

  attr_accessor :first_name, :last_name,:id,:pin,:account

  def initialize

    puts "Enter first name"
    first_name = gets.chomp.to_s

    puts "Enter last name"
    last_name = gets.chomp.to_s

    puts "Enter id"
    id = gets.chomp.to_s

    puts "Enter pin"
    pin = gets.chomp.to_s


    @account = Account.new
    @account.deposit(100)
    puts " #{first_name} " " #{last_name} created an account with #{id} and #{pin}"



  end
end




