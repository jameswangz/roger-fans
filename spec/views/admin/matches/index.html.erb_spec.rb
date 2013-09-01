require 'spec_helper'

describe "admin/matches/index" do
  before(:each) do
    assign(:admin_matches, [
      stub_model(Admin::Match,
        :ordinal => 1
      ),
      stub_model(Admin::Match,
        :ordinal => 1
      )
    ])
  end

  it "renders a list of admin/matches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
