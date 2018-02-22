require 'rails_helper'

RSpec.describe "snippets/new", type: :view do
  before(:each) do
    assign(:snippet, Snippet.new(
      :url => "MyString",
      :content => "MyText",
      :is_private => false
    ))
  end

  it "renders new snippet form" do
    render

    assert_select "form[action=?][method=?]", snippets_path, "post" do

      assert_select "input#snippet_url[name=?]", "snippet[url]"

      assert_select "textarea#snippet_content[name=?]", "snippet[content]"

      assert_select "input#snippet_is_private[name=?]", "snippet[is_private]"
    end
  end
end
