require 'rails_helper'

RSpec.describe "animals/show", type: :view do
  before(:each) do
    @animal = assign(:animal, Animal.create!(
      :common => "Common",
      :latin => "Latin",
      :kingdom => "Kingdom"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Common/)
    expect(rendered).to match(/Latin/)
    expect(rendered).to match(/Kingdom/)
  end
end
