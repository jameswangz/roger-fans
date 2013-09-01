require 'spec_helper'

describe "admin/matches/edit" do
  before(:each) do
    @admin_match = assign(:admin_match, stub_model(Admin::Match,
      :ordinal => 1
    ))
  end

  it "renders the edit admin_match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_match_path(@admin_match), "post" do
      assert_select "input#admin_match_ordinal[name=?]", "admin_match[ordinal]"
    end
  end
end
