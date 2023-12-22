require_relative '../src/door_controller'
require_relative '../src/view'

prepare_doors()
greetings()
call()
select_door(gets.to_i)
comment()
open_empty_door()
report()
ask()
change?(gets.chomp)
message()