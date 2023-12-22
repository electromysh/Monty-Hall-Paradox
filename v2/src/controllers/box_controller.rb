require_relative '../models/box'
require_relative '../models/stuff'
require_relative '../views/view'

def prepare_boxes()
    @boxes = [
      Box.new(content: Auto.new()),
      Box.new(content: Sheep.new()),
      Box.new(content: Sheep.new())
    ].shuffle
end

def is_valid_number(input)
  correct_input_numbers = [1, 2, 3]
  correct_input_numbers.member? input
end

def is_valid_answer(input)
  correct_input_answers = ["y", "n"]
  correct_input_answers.member? input
end

def select_box(number) 
  @selected_box = @boxes[number - 1] 
end

def find_box_to_open()
  @box_to_open = @boxes.each.select{|box| box.content.class != Auto && box != @selected_box}.sample
end

def open_empty_box(box)
    box.is_open = true
end

def change(answer)
    if answer == "y"
        box = @boxes.select{|box| !box.is_open && box != @selected_box}[0]
        number_of_box = @boxes.find_index(box) + 1
        select_box(number_of_box)
    end
end

def check_answer()
  @selected_box.content.class == Auto
end