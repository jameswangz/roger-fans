require 'spec_helper'

describe "admin/matches/new" do
  before(:each) do
    assign(:admin_match, stub_model(Admin::Match,
      :ordinal => 1
    ).as_new_record)
  end

  it "renders new admin_match form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_matches_path, "post" do
      assert_select "input#admin_match_ordinal[name=?]", "admin_match[ordinal]"
    end
  end
end
