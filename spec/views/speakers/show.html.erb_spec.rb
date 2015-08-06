require 'rails_helper'

RSpec.describe "speakers/show", type: :view do
  before(:each) do
    @speaker = assign(:speaker, Speaker.create!(
      :name => "Name",
      :pic => "Pic",
      :company => "Company",
      :email => "Email",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Pic/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Title/)
  end
end
