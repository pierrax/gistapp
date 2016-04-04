require 'rails_helper'

RSpec.describe "gists/show", :type => :view do
  before(:each) do
    @gist = assign(:gist, Gist.create!(
      :description => "Description",
      :file_name => "File Name",
      :code => "MyText",
      :secret => false,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/File Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
