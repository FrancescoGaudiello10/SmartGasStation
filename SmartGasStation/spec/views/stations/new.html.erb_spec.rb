require 'rails_helper'

RSpec.describe "stations/new", type: :view do
  before(:each) do
    assign(:station, Station.new(
      :Bandiera => "MyString",
      :Nome => "MyString",
      :Indirizzo => "MyString",
      :Benzina => 1.5,
      :Diesel => 1.5,
      :Super => 1.5,
      :Excellium => 1.5,
      :Metano => 1.5,
      :GPL => 1.5,
      :allDay => false,
      :Self => false,
      :autoLavaggio => false
    ))
  end

  it "renders new station form" do
    render

    assert_select "form[action=?][method=?]", stations_path, "post" do

      assert_select "input[name=?]", "station[Bandiera]"

      assert_select "input[name=?]", "station[Nome]"

      assert_select "input[name=?]", "station[Indirizzo]"

      assert_select "input[name=?]", "station[Benzina]"

      assert_select "input[name=?]", "station[Diesel]"

      assert_select "input[name=?]", "station[Super]"

      assert_select "input[name=?]", "station[Excellium]"

      assert_select "input[name=?]", "station[Metano]"

      assert_select "input[name=?]", "station[GPL]"

      assert_select "input[name=?]", "station[allDay]"

      assert_select "input[name=?]", "station[Self]"

      assert_select "input[name=?]", "station[autoLavaggio]"
    end
  end
end
