require_relative '../models/door'

def prepare_doors()
    @doors = Array.new(3){Door.new}
    @doors.first.set_whats_behind('auto')
    @prize_door = @doors.first
    @doors = @doors.shuffle
    @doors.each_with_index do |door, index|
        door.set_id(index + 1)
    end
end

def select_door(id)
  @selected_door = @doors.select {|door| door.id == id}[0]
end

def open_empty_door()
    @opened_door = @doors.each.select{|door| door != @prize_door && door != @selected_door}.sample
    @opened_door.set_state('open')
end

def change?(answer)
    if answer == "y"
        door = @doors.select{|door| door != @opened_door && door != @selected_door}[0]
        select_door(door.id)
    end
end

def check_answer()
    if @selected_door == @prize_door
      @success = true
    else
      @success =false
    end
end

def result()
    @success
end




















