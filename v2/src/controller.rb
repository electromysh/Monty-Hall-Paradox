require_relative 'model'

def prepare_doors()
    @doors = Array.new(3){Door.new}
    @doors.first.set_whats_behind('auto')
    @doors = @doors.shuffle
    @doors.each_with_index do |door, index|
        door.set_id(index + 1)
    end
end

def select_door(id)
  @selected_door = @doors.select {|door| door.id == id}[0]
end

def change?(answer)
    if answer == "y"
        door = @doors.each.select{|door| door.state != 'open' && door != @selected_door}[0]
        select_door(door.id)
    end
end




















