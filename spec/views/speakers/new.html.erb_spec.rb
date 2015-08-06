require 'rails_helper'

RSpec.describe "speakers/new", type: :view do
  before(:each) do
    assign(:speaker, Speaker.new(
      :name => "MyString",
      :pic => "MyString",
      :company => "MyString",
      :email => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new speaker form" do
    render

    assert_select "form[action=?][method=?]", speakers_path, "post" do

      assert_select "input#speaker_name[name=?]", "speaker[name]"

      assert_select "input#speaker_pic[name=?]", "speaker[pic]"

      assert_select "input#speaker_company[name=?]", "speaker[company]"

      assert_select "input#speaker_email[name=?]", "speaker[email]"

      assert_select "input#speaker_title[name=?]", "speaker[title]"
    end
  end
end
