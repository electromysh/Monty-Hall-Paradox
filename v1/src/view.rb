require_relative 'door_controller'

def greetings()
  p "WELCOME TO THE GAME!"
end

def call()
  p "CHOOSE A DOOR (1, 2 OR 3):"
end

def warning()
  p "INCORRECT NUMBER! ENTER 1, 2 OR 3" 
end

def comment()
    p "YOU CHOOSE A DOOR # #{@selected_door_id + 1}"
end

def report()
  p "SHOW YOU A DOOR # #{@opened_door_id + 1}. THERE IS #{@doors[@opened_door_id]}"
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