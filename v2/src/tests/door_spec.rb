require_relative '../models/door'
require 'rspec/autorun'

describe Door do
    # before(:all) do

    # end

    context "When testing the Door class" do
        it "Should initialize the coorect params" do
            door = Door.new
            expect(door.whats_behind).to eq 'sheep'
            expect(door.state).to eq 'close'
        end
    end

    # let(:door) { Door.new }

    # setters tests
    # it "set id of the door" do
    #     expect{ door.set_id(1) }.to change(door, :id).by(1)
    # end
    # it "set what's behind the door" do
    #     expect{ door.set_whats_behind('auto') }.to change(door, :whats_behind).by('auto')
    # end
    # it "set state of the door" do
    #     expect { door.set_state('open') }.to change(door, :state).by('open')
    # end

    # doors preparing tests

    # ожидаю что после подготовки дверей у них порядковые номера 1, 2, 3
    # ожидаю что после подготовки все двери закрыты
    # ожидаю что после подготовки у меня одна дверь с авто и две с овцами

    # interactions tests

    # ожидаю что при выборе выберется нужная дверь
    # ожидаю что при открывании пустой открывается не та которая выбрана и не та где авто
    # ожидаю что при открывании двери дверь помечена как открытая

    # ожидаю что при смене выбора откроется дверь которая не вскрыта и которая не выбранная

end

# module DoorTests
# end

# describe DoorTests do
#     context "When testing the Door class" do
#         let(:door) do
#             Class.new do
#                 include DoorTests
#                 def to_s
#                     "door"
#                 end

#                 def self.name
#                     "DoorClass"
#                 end
#             end
#         end
#     end


# end