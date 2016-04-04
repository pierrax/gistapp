require 'rails_helper'

RSpec.describe "gists/index", :type => :view do
  before(:each) do
    assign(:gists, [
      Gist.create!(
        :description => "Description",
        :file_name => "File Name",
        :code => "MyText",
        :secret => false,
        :user_id => 1
      ),
      Gist.create!(
        :description => "Description",
        :file_name => "File Name",
        :code => "MyText",
        :secret => false,
        :user_id => 1
      )
    ])
  end

  it "renders a list of gists" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
