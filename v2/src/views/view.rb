require_relative '../models/box'
require_relative '../controllers/box_controller'

def greetings()
  p "WELCOME TO THE GAME!"
end

def comment()
    p "YOU CHOOSE A BOX # #{ @boxes.find_index(@selected_box) + 1 }"
end

def report()
  p "SHOW YOU A BOX # #{ @boxes.find_index(@box_to_open) + 1 }. THERE IS #{ @box_to_open.content.class }"
end

def input_valid_number()
  p "CHOOSE A BOX (1, 2 or 3):"
  input = gets.to_i
  while !is_valid_number(input)
    p "INCORRECT NUMBER! ENTER 1, 2 OR 3" 
    input = gets.to_i
  end
  input
end

def input_valid_answer()
  p "YOU SHURE? IF YOU CHANGE YOUR CHOICE PRESS y"
  input = gets.chomp
  while !is_valid_answer(input)
    p "PLEASE ENTER y OR n"
    input = gets.chomp
  end
  input
end

def print_results(is_success)
    if is_success
      p "YOU WIN!!! CONGRATULATIONS!!!"
    else
      p "YOU LOSE!!! TRY ONCE MORE..."
    end
end