require "application_system_test_case"

class SubitemsTest < ApplicationSystemTestCase
  setup do
    @subitem = subitems(:one)
  end

  test "visiting the index" do
    visit subitems_url
    assert_selector "h1", text: "Subitems"
  end

  test "creating a Subitem" do
    visit subitems_url
    click_on "New Subitem"

    check "Approval" if @subitem.approval
    fill_in "Feature", with: @subitem.feature_id
    check "Notification" if @subitem.notification
    fill_in "Subs usage", with: @subitem.subs_usage
    fill_in "Subscription", with: @subitem.subscription_id
    fill_in "Tracked quantity", with: @subitem.tracked_quantity
    click_on "Create Subitem"

    assert_text "Subitem was successfully created"
    click_on "Back"
  end

  test "updating a Subitem" do
    visit subitems_url
    click_on "Edit", match: :first

    check "Approval" if @subitem.approval
    fill_in "Feature", with: @subitem.feature_id
    check "Notification" if @subitem.notification
    fill_in "Subs usage", with: @subitem.subs_usage
    fill_in "Subscription", with: @subitem.subscription_id
    fill_in "Tracked quantity", with: @subitem.tracked_quantity
    click_on "Update Subitem"

    assert_text "Subitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Subitem" do
    visit subitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subitem was successfully destroyed"
  end
end
