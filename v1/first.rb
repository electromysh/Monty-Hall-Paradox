@doors = [1, 0, 0].shuffle

puts  @doors

puts "Choose a door: "

door = gets
@selected_door = door.to_i - 1

puts "You choosed a door # #{door}"
puts "------------------------------------"

@opened_door = @doors.each_index.select{|i| @doors[i] == 0 && i != @selected_door}[0]

puts "FIRST EMPTY DOOR: #{@opened_door + 1}"

def change_door()
  @selected_door = @doors.each_index.select{|i| i != @opened_door && i != @selected_door}[0]
  puts "You changed door to #{@selected_door + 1}"
end

def open_door(door_number)
    if @doors[door_number] == 1
        puts "YOU WIN!"
    else
        puts "YOU LOSE!"
    end
end

puts "Change your choice? (y/n)"
answer = gets.chomp
if answer == "y"
    change_door()
end

open_door(@selected_door)