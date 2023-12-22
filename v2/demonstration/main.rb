require_relative '../src/views/view'
require_relative '../src/controllers/box_controller'

prepare_boxes()
greetings()
call()
select_box(gets.to_i)
comment()
open_empty_box()
report()
ask()
change?(gets.chomp)
check_answer()
message()