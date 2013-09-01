require 'spec_helper'

describe "admin/matches/show" do
  before(:each) do
    @admin_match = assign(:admin_match, stub_model(Admin::Match,
      :ordinal => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
