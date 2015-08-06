require 'rails_helper'

RSpec.describe "speakers/edit", type: :view do
  before(:each) do
    @speaker = assign(:speaker, Speaker.create!(
      :name => "MyString",
      :pic => "MyString",
      :company => "MyString",
      :email => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit speaker form" do
    render

    assert_select "form[action=?][method=?]", speaker_path(@speaker), "post" do

      assert_select "input#speaker_name[name=?]", "speaker[name]"

      assert_select "input#speaker_pic[name=?]", "speaker[pic]"

      assert_select "input#speaker_company[name=?]", "speaker[company]"

      assert_select "input#speaker_email[name=?]", "speaker[email]"

      assert_select "input#speaker_title[name=?]", "speaker[title]"
    end
  end
end
