require_relative '../models/box'
require_relative '../models/stuff'
require_relative '../views/view'
require_relative '../controllers/box_controller'
require 'rspec/autorun'

describe Box do
    before(:all) do
        # let(:box) { Box.new }
        @box = Box.new
        @boxes = prepare_boxes()
        @sheep = Sheep.new()
        @auto = Auto.new()
    end

    context "When testing the Box class methods" do
        it "Should initialize the coorect params" do
            expect(@box).to have_attributes(is_open: false, content: nil)
            box2 = Box.new(is_open: true)
            expect(box2).to have_attributes(is_open: true, content: nil)
            box3 = Box.new(is_open: true, content: @sheep)
            expect(box3).to have_attributes(is_open: true, content: @sheep)
        end

        it "Should correctly put stuff in a box" do
            expect { 
                @box.put_stuff(@sheep)
            }.to change{ @box.content }.from(nil).to(@sheep)

            box = Box.new(content: @auto)
            expect { 
                box.put_stuff(@sheep)
            }.to change{ box.content }.from(@auto).to(@sheep)
        end

        it "Should open a box" do
            expect { 
                @box.open()
            }.to change{ @box.is_open }.from(false).to(true)
        end

        context "When testing interactive with boxes" do
            it "Should correctly prepare boxes" do
                expect(@boxes.length).to be(3)
                # ожидаю что после подготовки все коробки закрыты
                expect(@boxes.first).to have_attributes(is_open: false)
                expect(@boxes.last).to have_attributes(is_open: false)
                # ожидаю что после подготовки у меня одна коробка с авто и две с овцами

            end

            # ожидаю что при выборе выберется нужная коробка
            it "Should correctly select a box by number" do

            end

            # ожидаю что при открывании пустой открывается не та которая выбрана и не та где авто
            it "Should open a box that not selected and is not open" do

            end

            # ожидаю что при открывании коробки коробка помечена как открытая
            it "Should mark opened box as opened" do

            end

            # ожидаю что при смене выбора откроется коробка которая не вскрыта и которая не выбранная
            it "Should select a box that not open and doesn't selected yet (when change a box)" do

            end
        end
    end
end