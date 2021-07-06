def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total card_total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game card_total
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_deal_total = deal_card() + deal_card()
  display_card_total(first_deal_total)
  first_deal_total
end

def hit? curr_score
  prompt_user()
  user_input = get_user_input()
  if user_input == "s"
    curr_score
  elsif user_input == "h"
    curr_score += deal_card()
  else
    invalid_command()
    prompt_user()
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  first_deal = initial_round()
  curr_value = hit?(first_deal)
  display_card_total(curr_value)
  until curr_value > 21
    curr_value = hit?(curr_value)
    display_card_total(curr_value)
  end
  end_game(curr_value)
end
