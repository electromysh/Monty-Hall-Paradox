require_relative 'model'
require_relative 'controller'

def greetings()
  p "WELCOME TO THE GAME!"
end

def call()
  p "CHOOSE A DOOR:"
end

def comment()
    p "YOU CHOOSE A DOOR # #{@selected_door.id}"
end

def open_empty_door()
  door = @doors.each.select{|door| door.whats_behind != 'auto' && door != @selected_door}.sample
  door.set_state('open')
  p "SHOW YOU A DOOR # #{door.id}. THERE IS #{door.whats_behind}"
end

def ask()
  p "YOU SHURE? IF YOU CHANGE YOUR CHOICE PRESS y"
end

def message()
    subject = @selected_door.whats_behind
    if subject == 'auto' 
      p "YOU WIN!!! CONGRATULATIONS!!!"
    else
      p "YOU LOSE!!! TRY ONCE MORE..."
    end
end
