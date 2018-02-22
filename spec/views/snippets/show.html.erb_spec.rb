require 'rails_helper'

RSpec.describe "snippets/show", type: :view do
  before(:each) do
    @snippet = assign(:snippet, Snippet.create!(
      :url => "Url",
      :content => "MyText",
      :is_private => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
