require_relative '../src/views/view'
require_relative '../src/controllers/box_controller'

prepare_boxes()
greetings()
select_box(input_valid_number())
comment()
open_empty_box(find_box_to_open())
report()
change(input_valid_answer())
print_results(check_answer())