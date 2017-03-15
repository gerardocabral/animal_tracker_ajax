require 'rails_helper'

RSpec.describe "animals/edit", type: :view do
  before(:each) do
    @animal = assign(:animal, Animal.create!(
      :common => "MyString",
      :latin => "MyString",
      :kingdom => "MyString"
    ))
  end

  it "renders the edit animal form" do
    render

    assert_select "form[action=?][method=?]", animal_path(@animal), "post" do

      assert_select "input#animal_common[name=?]", "animal[common]"

      assert_select "input#animal_latin[name=?]", "animal[latin]"

      assert_select "input#animal_kingdom[name=?]", "animal[kingdom]"
    end
  end
end
