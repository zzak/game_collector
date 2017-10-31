require "application_system_test_case"

class UsersSignupsTest < ApplicationSystemTestCase
  test "visit signup page" do
    visit signup_url

    assert_selector "h1", text: "Sign up"
  end

  test "password can't be blank" do
    visit signup_url

    click_on "Create my account"

    assert_text "Password can't be blank"
  end

  test "signup goes to welcome user page" do
    visit signup_url

    fill_in "Email", with: "MyString@MyDomain"
    fill_in "Password", with: "MyString"
    fill_in "Confirmation", with: "MyString"

    click_on "Create my account"

    assert_text "Welcome, MyString@MyDomain"
  end
end
