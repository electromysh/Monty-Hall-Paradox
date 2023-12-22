require_relative '../src/model'
require_relative '../src/view'

class Numeric
    def percent_of(n)
      self.to_f / n.to_f * 100.0
    end
end

yes_count = 0
no_count = 0

limit = 500

def monty_hall(door_number, change)
    prepare_doors()
    select_door(door_number)
    open_empty_door()
    change?(change)
    result()
end

for counter in 0..limit do
    win = monty_hall(1, "y")
    yes_count += 1 if win
    counter += 1
end

for counter in 0..limit do
    win = monty_hall(1, "n")
    no_count += 1 if win
    counter += 1
end

yes_p = (yes_count).percent_of(limit).round(2)
no_p = (no_count).percent_of(limit).round(2)

p "CHANGE A CHOICE AND GET #{yes_count}/#{limit} WINNING. IT IS #{yes_p}%"
p "DON'T CHANGE A CHOICE AND GET #{no_count}/#{limit} WINNING. IT IS #{no_p} %"