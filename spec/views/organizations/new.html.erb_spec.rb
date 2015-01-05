require 'rails_helper'

RSpec.describe "organizations/new", :type => :view do
  before(:each) do
    assign(:organization, Organization.new(
      :name => "Test",
      :ein => "111111111",
      :email => "email"
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input#organization_name[name=?]", "organization[name]"

      assert_select "input#organization_ein[name=?]", "organization[ein]"
    end
  end
end
