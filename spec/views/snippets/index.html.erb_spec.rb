require 'rails_helper'

RSpec.describe "snippets/index", type: :view do
  before(:each) do
    assign(:snippets, [
      Snippet.create!(
        :url => "Url",
        :content => "MyText",
        :is_private => false
      ),
      Snippet.create!(
        :url => "Url",
        :content => "MyText",
        :is_private => false
      )
    ])
  end

  it "renders a list of snippets" do
    render
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
