require_relative 'model'

def greetings()
  p "WELCOME TO THE GAME!"
end

def call()
  p "CHOOSE A DOOR:"
end

def comment()
    p "YOU CHOOSE A DOOR # #{@selected_door_id + 1}"
end

def ask()
  p "YOU SHURE? IF YOU CHANGE YOUR CHOICE PRESS y"
end

def message()
    if @right_door_selected
        p "YOU WIN!!! CONGRATULATIONS!!!"
    else
        p "YOU LOSE!!! TRY ONCE MORE..."
    end
end