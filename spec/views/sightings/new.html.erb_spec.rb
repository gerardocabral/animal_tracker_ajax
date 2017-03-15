require 'rails_helper'

RSpec.describe "sightings/new", type: :view do
  before(:each) do
    assign(:sighting, Sighting.new(
      :latitude => "9.99",
      :longitude => "9.99",
      :region => "MyString",
      :animal => nil
    ))
  end

  it "renders new sighting form" do
    render

    assert_select "form[action=?][method=?]", sightings_path, "post" do

      assert_select "input#sighting_latitude[name=?]", "sighting[latitude]"

      assert_select "input#sighting_longitude[name=?]", "sighting[longitude]"

      assert_select "input#sighting_region[name=?]", "sighting[region]"

      assert_select "input#sighting_animal_id[name=?]", "sighting[animal_id]"
    end
  end
end
