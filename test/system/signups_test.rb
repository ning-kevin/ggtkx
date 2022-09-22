require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  setup do
    @signup = signups(:one)
  end

  test "visiting the index" do
    visit signups_url
    assert_selector "h1", text: "Signups"
  end

  test "should create signup" do
    visit signups_url
    click_on "New signup"

    fill_in "Email", with: @signup.email
    check "First time" if @signup.first_time
    fill_in "Perform date", with: @signup.perform_date
    fill_in "Performer", with: @signup.performer_id
    fill_in "Round", with: @signup.round
    fill_in "Wechat", with: @signup.wechat_id
    click_on "Create Signup"

    assert_text "Signup was successfully created"
    click_on "Back"
  end

  test "should update Signup" do
    visit signup_url(@signup)
    click_on "Edit this signup", match: :first

    fill_in "Email", with: @signup.email
    check "First time" if @signup.first_time
    fill_in "Perform date", with: @signup.perform_date
    fill_in "Performer", with: @signup.performer_id
    fill_in "Round", with: @signup.round
    fill_in "Wechat", with: @signup.wechat_id
    click_on "Update Signup"

    assert_text "Signup was successfully updated"
    click_on "Back"
  end

  test "should destroy Signup" do
    visit signup_url(@signup)
    click_on "Destroy this signup", match: :first

    assert_text "Signup was successfully destroyed"
  end
end
