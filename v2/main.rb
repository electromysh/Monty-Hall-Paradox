require_relative 'src/view'
require_relative 'src/controller'

prepare_doors()
greetings()
call()
select_door(gets.to_i)
comment()
open_empty_door()
ask()
change?(gets.chomp)
message()