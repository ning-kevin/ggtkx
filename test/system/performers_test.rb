require "application_system_test_case"

class PerformersTest < ApplicationSystemTestCase
  setup do
    @performer = performers(:one)
  end

  test "visiting the index" do
    visit performers_url
    assert_selector "h1", text: "Performers"
  end

  test "should create performer" do
    visit performers_url
    click_on "New performer"

    fill_in "Description", with: @performer.description
    fill_in "Email", with: @performer.email
    fill_in "Name", with: @performer.name
    fill_in "P times", with: @performer.p_times
    fill_in "Wechat", with: @performer.wechat_id
    click_on "Create Performer"

    assert_text "Performer was successfully created"
    click_on "Back"
  end

  test "should update Performer" do
    visit performer_url(@performer)
    click_on "Edit this performer", match: :first

    fill_in "Description", with: @performer.description
    fill_in "Email", with: @performer.email
    fill_in "Name", with: @performer.name
    fill_in "P times", with: @performer.p_times
    fill_in "Wechat", with: @performer.wechat_id
    click_on "Update Performer"

    assert_text "Performer was successfully updated"
    click_on "Back"
  end

  test "should destroy Performer" do
    visit performer_url(@performer)
    click_on "Destroy this performer", match: :first

    assert_text "Performer was successfully destroyed"
  end
end
