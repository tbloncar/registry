require 'spec_helper'

describe "admins/new" do
  before(:each) do
    assign(:admin, stub_model(Admin,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :password_confirmation => "MyString"
    ).as_new_record)
  end

  it "renders new admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admins_path, :method => "post" do
      assert_select "input#admin_first_name", :name => "admin[first_name]"
      assert_select "input#admin_last_name", :name => "admin[last_name]"
      assert_select "input#admin_email", :name => "admin[email]"
      assert_select "input#admin_password", :name => "admin[password]"
      assert_select "input#admin_password_confirmation", :name => "admin[password_confirmation]"
    end
  end
end
