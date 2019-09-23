require "application_system_test_case"

class ServicesTest < ApplicationSystemTestCase
  setup do
    @service = services(:one)
  end

  test "visiting the index" do
    visit services_url
    assert_selector "h1", text: "Services"
  end

  test "creating a Service" do
    visit services_url
    click_on "New Service"

    fill_in "Actual price", with: @service.actual_price
    fill_in "Creation price", with: @service.creation_price
    fill_in "Creator user", with: @service.creator_user
    fill_in "Description", with: @service.description
    fill_in "Modifier user", with: @service.modifier_user
    fill_in "Name", with: @service.name
    check "Status" if @service.status
    click_on "Create Service"

    assert_text "Service was successfully created"
    click_on "Back"
  end

  test "updating a Service" do
    visit services_url
    click_on "Edit", match: :first

    fill_in "Actual price", with: @service.actual_price
    fill_in "Creation price", with: @service.creation_price
    fill_in "Creator user", with: @service.creator_user
    fill_in "Description", with: @service.description
    fill_in "Modifier user", with: @service.modifier_user
    fill_in "Name", with: @service.name
    check "Status" if @service.status
    click_on "Update Service"

    assert_text "Service was successfully updated"
    click_on "Back"
  end

  test "destroying a Service" do
    visit services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service was successfully destroyed"
  end
end
