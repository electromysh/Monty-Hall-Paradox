require_relative '../views/view'
# require 'rspec/autorun'

class Message
end

describe Message do
    context "When player start a game" do
        it "Sholud put correct greeting message" do
            # def greetings()
            #     p "WELCOME TO THE GAME!"
            #   end
        end

        it "Sholud put correct call message" do
            # def call()
            #     p "CHOOSE A DOOR:"
            #   end
        end
    end

    context "When player does actions" do
        it "Sholud put correct comment message" do
            # def comment()
            #     p "YOU CHOOSE A DOOR # #{@selected_door.id}"
            # end
        end

        it "Sholud put correct report message" do
            # def report()
            #     p "SHOW YOU A DOOR # #{@opened_door.id}. THERE IS #{@opened_door.whats_behind}"
            #   end
        end

        it "Sholud put correct question message" do
            # def ask()
            #     p "YOU SHURE? IF YOU CHANGE YOUR CHOICE PRESS y"
            #   end
        end
    end

    context "When player completes the game" do
        it "Sholud put correct result message" do
            # def message()
            #     if @success
            #       p "YOU WIN!!! CONGRATULATIONS!!!"
            #     else
            #       p "YOU LOSE!!! TRY ONCE MORE..."
            #     end
            # end
        end
    end
end