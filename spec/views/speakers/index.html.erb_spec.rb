require 'rails_helper'

RSpec.describe "speakers/index", type: :view do
  before(:each) do
    assign(:speakers, [
      Speaker.create!(
        :name => "Name",
        :pic => "Pic",
        :company => "Company",
        :email => "Email",
        :title => "Title"
      ),
      Speaker.create!(
        :name => "Name",
        :pic => "Pic",
        :company => "Company",
        :email => "Email",
        :title => "Title"
      )
    ])
  end

  it "renders a list of speakers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pic".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
