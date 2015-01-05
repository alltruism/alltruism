require 'rails_helper'

RSpec.describe "organizations/index", :type => :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        :name => "Test",
        :ein => "111111111",
        :email => "email"
      ),
      Organization.create!(
        :name => "Test2",
        :ein => "111111112",
        :email => "email2",
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", :text => "Test".to_s, :count => 1
    assert_select "tr>td", :text => "111111111".to_s, :count => 1
    assert_select "tr>td", :text => "email".to_s, :count => 1
    assert_select "tr>td", :text => "Test2".to_s, :count => 1
    assert_select "tr>td", :text => "111111112".to_s, :count => 1
    assert_select "tr>td", :text => "email2".to_s, :count => 1
  end
end
