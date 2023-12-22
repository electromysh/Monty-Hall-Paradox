require_relative '../models/door'
require_relative '../views/view'
require_relative '../controllers/door_controller'
# require 'rspec/autorun'

describe Door do
    # before(:all) do
        # let(:door) { Door.new }
    # end

    context "When testing the Door class methods" do
        it "Should initialize the coorect params" do
            door = Door.new
            expect(door).to have_attributes(id: nil, state: 'close', whats_behind: 'sheep')
        end

        it "Should correctly set a Door" do
            door = Door.new
            expect { 
                door.set_id(1) 
            }.to change{ door.id }.to(1)

            expect {
                door.set_state('open')
            }.to change{ door.state }.to('open')

            expect {
                door.set_whats_behind('auto')
            }.to change{ door.whats_behind }.to('auto')
        end

        context "When testing interactive with doors" do
            it "Should correctly prepare doors" do
                doors = prepare_doors()
    
                expect(doors.length).to be(3)
    
                # ожидаю что после подготовки дверей у них порядковые номера 1, 2, 3
                expect(doors.first).to have_attributes(id: 1)
                expect(doors.last).to have_attributes(id: 3)
    
                # ожидаю что после подготовки все двери закрыты
                # expect(doors) state: 'close'
    
                # ожидаю что после подготовки у меня одна дверь с авто и две с овцами
                # expect(doors.last).to with_attributes(whats_behind: 'sheep').c 
            end

            # ожидаю что при выборе выберется нужная дверь
            it "Should correctly select a door by ID" do
            end

            # ожидаю что при открывании пустой открывается не та которая выбрана и не та где авто
            it "Should open door that not selected and not open" do

            end

            # ожидаю что при открывании двери дверь помечена как открытая
            it "Should mark opened door as opened" do

            end

            # ожидаю что при смене выбора откроется дверь которая не вскрыта и которая не выбранная
            it "Should select a door that not open and doesn't selected yet (when change a door)" do

            end
        end
    end
end