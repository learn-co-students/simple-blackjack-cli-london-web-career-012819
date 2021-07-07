def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total =  card_one + card_two
  display_card_total(card_total)
  return card_total
end

def hit?(total)
  prompt_user()
  input = get_user_input()

   if input == "s"
    return total
  elsif input == "h"
    rand = deal_card()
    total += rand
  else
    invalid_command()
  end
    return total
end
  def invalid_command
    puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  sum = initial_round()

   until sum >= 21
    sum = hit?(sum)
    display_card_total(sum)
  end

   end_game(sum)
end
