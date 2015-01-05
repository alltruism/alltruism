require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :fname => "Fname",
        :lname => "Lname",
        :email => "email",
        :password => "pass"
      ),
      User.create!(
        :fname => "Fname",
        :lname => "Lname",
        :email => "email2",
        :password => "pass"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => "email".to_s, :count => 1
    assert_select "tr>td", :text => "email2".to_s, :count => 1
  end
end
