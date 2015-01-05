require 'rails_helper'

RSpec.describe "organizations/show", :type => :view do
  before(:each) do
    @organization = assign(:organization, Organization.create!(
      :name => "Test",
      :ein => "111111111",
      :email => "email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Test/)
    expect(rendered).to match(/111111111/)
    expect(rendered).to match(/email/)
  end
end
