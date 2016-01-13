require 'Account'
require 'Profile'
require 'Login'

loop do
  def menu
    puts "What do you want to do"
    puts "1.Create account"
    puts "2.Login"
    puts "3.Make transaction "
    puts "4.Logout"

    choice = gets.chomp.to_i
    if(1..6).include? (choice)
    else
      puts "Incorrect selection"
      break
    end

    case choice
      when 1
        create_account

      when "login"
        puts login
      when "logout"
        puts "logout"
      when "transaction"
        puts transaction
    end

    puts "Do you want to continue? (y/n) "
    answer = gets.chomp.downcase
    break if answer == "n"
  end
end


