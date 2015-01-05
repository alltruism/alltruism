require 'rails_helper'

RSpec.describe "organizations/edit", :type => :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :name => "Test",
      :ein => "111111111",
      :email => "email"
    ))
  end

  it "renders the edit organization form" do
    render

    assert_select "form[action=?][method=?]", organization_path(@organization), "post" do

      assert_select "input#organization_name[name=?]", "organization[name]"

      assert_select "input#organization_ein[name=?]", "organization[ein]"

      assert_select "input#organization_email[name=?]", "organization[email]"
    end
  end
end
