require_relative '../src/views/view'
require_relative '../src/controllers/door_controller'

prepare_doors()
greetings()
call()
select_door(gets.to_i)
comment()
open_empty_door()
report()
ask()
change?(gets.chomp)
check_answer()
message()