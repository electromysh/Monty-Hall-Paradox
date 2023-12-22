def prepare_doors()
    @doors = [true, false, false].shuffle
end

def select_door(id)
    @selected_door_id = id - 1
    @right_door_selected = @doors[@selected_door_id]
end

def open_empty_door()
    @opened_door_id = @doors.each_index.select{ |i| @doors[i] == false && i != @selected_door_id }.sample
end

def change?(answer)
    if answer == "y"
        new_door = @doors.each_index.select{ |i| i != @opened_door_id && i != @selected_door_id }[0] + 1
        select_door(new_door)
    end
end

def result()
    @right_door_selected
end