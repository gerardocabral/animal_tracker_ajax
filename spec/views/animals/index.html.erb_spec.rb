require 'rails_helper'

RSpec.describe "animals/index", type: :view do
  before(:each) do
    assign(:animals, [
      Animal.create!(
        :common => "Common",
        :latin => "Latin",
        :kingdom => "Kingdom"
      ),
      Animal.create!(
        :common => "Common",
        :latin => "Latin",
        :kingdom => "Kingdom"
      )
    ])
  end

  it "renders a list of animals" do
    render
    assert_select "tr>td", :text => "Common".to_s, :count => 2
    assert_select "tr>td", :text => "Latin".to_s, :count => 2
    assert_select "tr>td", :text => "Kingdom".to_s, :count => 2
  end
end
