require_relative '../models/box'
require_relative '../models/stuff'
require_relative '../views/view'

def prepare_boxes()
    @boxes = Array.new(3){Box.new}
    @boxes[0].put_stuff(Sheep.new())
    @boxes[1].put_stuff(Sheep.new())
    @boxes[2].put_stuff(Auto.new())
    @boxes.shuffle!
end

def select_box(number)
  correct_input_numbers = [1, 2, 3]
  until correct_input_numbers.member? number do
    warning()
    number = gets.to_i
  end
  
  @selected_box = @boxes[number - 1] 
end

def open_empty_box()
    @box_to_open = @boxes.each.select{|box| box.content.class != Auto && box != @selected_box}.sample
    @box_to_open.open()
end

def change?(answer)
    if answer == "y"
        box = @boxes.select{|box| !box.is_open && box != @selected_box}[0]
        number_of_box = @boxes.find_index(box) + 1
        select_box(number_of_box)
    end
end

def check_answer()
    if @selected_box.content.class == Auto
      @success = true
    else
      @success =false
    end
end

def result()
    @success
end