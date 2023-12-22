require_relative '../models/box'
require_relative '../models/stuff'
require_relative '../views/view'
require 'rspec/autorun'

class View 
end

describe View do
    before(:all) do
        @boxes = prepare_boxes()
    end
    it "Should not continue game if selected box number is incorrect" do

        # def input_valid_number()
        #     p "CHOOSE A BOX (1, 2 or 3):"
        #     input = gets.to_i
        #     while !is_valid_number(input)
        #       p "INCORRECT NUMBER! ENTER 1, 2 OR 3" 
        #       input = gets.to_i
        #     end
        #     input
        #   end
    end

    it "Should not continue game if answer is incorrect" do
    # def input_valid_answer()
        #     p "YOU SHURE? IF YOU CHANGE YOUR CHOICE PRESS y"
        #     input = gets.chomp
        #     while !is_valid_answer(input)
        #       p "PLEASE ENTER y OR n"
        #       input = gets.chomp
        #     end
        #     input
        #   end
    end
        
    it "Sholud put correct comment message" do
        select_box(1)
        expect{ comment() }.to_be eq "YOU CHOOSE A BOX # 1"
    end

    it "Sholud put correct report message" do
        select_box(1)
        open_box(find_box_to_open())
        expect{ report() }.to_be eq "SHOW YOU A BOX # #{ 2 || 3 }. THERE IS sheep"
    end

    it "Sholud put correct result message" do
        prize_box = @doors.select{ |door| door.content = Auto }[0]
        select_box(prize_box)
        expect{ print_results }.to_be eq "YOU WIN!!! CONGRATULATIONS!!!"

        not_lucky_box = @doors.select{ |door| door.content = Sheep }.sample
        select_box(not_lucky_box)
        expect{ print_results }.to_be eq "YOU LOSE!!! TRY ONCE MORE..."
    end
end