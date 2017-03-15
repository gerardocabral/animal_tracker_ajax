require 'rails_helper'

RSpec.describe "sightings/index", type: :view do
  before(:each) do
    assign(:sightings, [
      Sighting.create!(
        :latitude => "9.99",
        :longitude => "9.99",
        :region => "Region",
        :animal => nil
      ),
      Sighting.create!(
        :latitude => "9.99",
        :longitude => "9.99",
        :region => "Region",
        :animal => nil
      )
    ])
  end

  it "renders a list of sightings" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
