require 'rails_helper'

RSpec.describe "songs/index", type: :view do
  before(:each) do
    @album = FactoryGirl.create(:album)
    assign(:songs, [
      Song.create!(
        :name => "Name",
        :track_number => 1,
        :album => @album
      ),
      Song.create!(
        :name => "Name",
        :track_number => 1,
        :album => @album
      )
    ])
  end

  it "renders a list of songs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
