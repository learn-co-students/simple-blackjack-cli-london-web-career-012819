def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(total)

  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user

  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(total)

  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round()


  first =  deal_card()
  second = deal_card()
  sum = first + second
  display_card_total(sum)
  return sum


  # code #initial_round here
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

  # code hit? here
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  sum = initial_round()

  until sum >= 21
    sum = hit?(sum)
    display_card_total(sum)
  end

  end_game(sum)
end
