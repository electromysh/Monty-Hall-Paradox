require_relative 'src/model'
require_relative 'src/view'

prepare_doors()
greetings()
call()
select_door(gets.to_i)
comment()
open_empty_door()
ask()
change?(gets.chomp)
message()