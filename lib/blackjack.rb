def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts  "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "s" then
<<<<<<< HEAD
    return card_total
    elsif input == "h" then
     card_total += deal_card
   else
     invalid_command
     hit?(card_total)
   end
  return card_total
=======
    hit?(card_total)
    elsif input == "h" then
     hit?(card_total + deal_card)
   else
     invalid_command
   end
  
>>>>>>> 3ecc964810e9980cd5714b01ec827da9e6080dcc
end

def invalid_command
  puts "Please enter a valid command"
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total <= 21 do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  
return end_game(card_total)
end
    
