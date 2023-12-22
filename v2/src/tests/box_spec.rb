require_relative '../models/box'
require_relative '../models/stuff'
require_relative '../views/view'
require_relative '../controllers/box_controller'
require 'rspec/autorun'

describe Box do
    before(:all) do
        @box = Box.new
        @boxes = prepare_boxes()
        @sheep = Sheep.new()
        @auto = Auto.new()
    end

    context "When testing the Box class" do
        it "Should initialize the coorect params" do
            expect(@box).to have_attributes(is_open: false, content: nil)
            box2 = Box.new(is_open: true)
            expect(box2).to have_attributes(is_open: true, content: nil)
            box3 = Box.new(is_open: true, content: @sheep)
            expect(box3).to have_attributes(is_open: true, content: @sheep)
        end
    end

    context "When testing actions with boxes" do
        it "Should correctly prepare boxes" do
            expect(@boxes.length).to be(3)
    
            expect(@boxes).to contain_exactly(
                an_object_having_attributes(is_open: false, content: Auto),
                an_object_having_attributes(is_open: false, content: Sheep),
                an_object_having_attributes(is_open: false, content: Sheep)
            )
        end

        it "Should correctly select a box by number" do
            expect(select_box(1)).to eq @boxes[0]
            expect(select_box(2)).to eq @boxes[1]
            expect(select_box(3)).to eq @boxes[2]
        end

        it "Should open a box that not selected and contains a sheep" do
            select_box(1)
            expect(find_box_to_open()).to_not eq @boxes[0]
            expect(find_box_to_open()).to have_attributes(content: Sheep)
        end

        it "Should mark opened box as opened" do
            box = find_box_to_open()
            expect{ open_box(box) }.to change{ box.is_open }.from(false).to(true)
        end

        it "Should select a box that not open and doesn't selected yet (when change a box)" do
            select_box(1)
            new_selected = change_choice("y")
            expect(new_selected).to_not eq @boxes[0]
            expect(new_selected).to have_attributes(is_open: false)
        end
    end
end