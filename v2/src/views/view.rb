require_relative '../models/door'
require_relative '../controllers/door_controller'

def greetings()
  p "WELCOME TO THE GAME!"
end

def call()
  p "CHOOSE A DOOR:"
end

def comment()
    p "YOU CHOOSE A DOOR # #{@selected_door.id}"
end

def report()
  p "SHOW YOU A DOOR # #{@opened_door.id}. THERE IS #{@opened_door.whats_behind}"
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
