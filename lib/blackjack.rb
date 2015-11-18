require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_sum = deal_card+deal_card
  display_card_total(card_sum)
  card_sum
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == "s"
    number
    #binding.pry
  elsif input == "h"
    deal_card+number
    #binding.pry 
  else
    invalid_command
  end

end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
current_sum=hit?(initial_round)
display_card_total(current_sum)
  until current_sum>=21  do
  current_sum=hit?(current_sum)
  end
  end_game(current_sum)
  

end


    