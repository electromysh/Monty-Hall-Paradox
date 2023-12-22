require_relative '../models/box'
require_relative '../controllers/box_controller'

def greetings()
  p "WELCOME TO THE GAME!"
end

def call()
  p "CHOOSE A BOX:"
end

def comment()
    p "YOU CHOOSE A BOX # #{ @boxes.find_index(@selected_box) + 1 }"
end

def report()
  p "SHOW YOU A DOOR # #{ @boxes.find_index(@box_to_open) + 1 }. THERE IS #{ @box_to_open.content.class }"
end

def ask()
  p "YOU SHURE? IF YOU CHANGE YOUR CHOICE PRESS y"
end

def message()
    if @success
      p "YOU WIN!!! CONGRATULATIONS!!!"
    else
      p "YOU LOSE!!! TRY ONCE MORE..."
    end
end
