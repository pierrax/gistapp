require 'rails_helper'

RSpec.describe "gists/new", :type => :view do
  before(:each) do
    assign(:gist, Gist.new(
      :description => "MyString",
      :file_name => "MyString",
      :code => "MyText",
      :secret => false,
      :user_id => 1
    ))
  end

  it "renders new gist form" do
    render

    assert_select "form[action=?][method=?]", gists_path, "post" do

      assert_select "input#gist_description[name=?]", "gist[description]"

      assert_select "input#gist_file_name[name=?]", "gist[file_name]"

      assert_select "textarea#gist_code[name=?]", "gist[code]"

      assert_select "input#gist_secret[name=?]", "gist[secret]"

      assert_select "input#gist_user_id[name=?]", "gist[user_id]"
    end
  end
end
