require "application_system_test_case"

class MaintsTest < ApplicationSystemTestCase
  setup do
    @maint = maints(:one)
  end

  test "visiting the index" do
    visit maints_url
    assert_selector "h1", text: "Maints"
  end

  test "should create maint" do
    visit maints_url
    click_on "New maint"

    fill_in "Date", with: @maint.date
    fill_in "Machine", with: @maint.machine_id
    fill_in "Materials", with: @maint.materials
    fill_in "Photo", with: @maint.photo
    fill_in "Type engine", with: @maint.type_engine_id
    fill_in "Type maint", with: @maint.type_maint_id
    fill_in "User", with: @maint.user_id
    click_on "Create Maint"

    assert_text "Maint was successfully created"
    click_on "Back"
  end

  test "should update Maint" do
    visit maint_url(@maint)
    click_on "Edit this maint", match: :first

    fill_in "Date", with: @maint.date
    fill_in "Machine", with: @maint.machine_id
    fill_in "Materials", with: @maint.materials
    fill_in "Photo", with: @maint.photo
    fill_in "Type engine", with: @maint.type_engine_id
    fill_in "Type maint", with: @maint.type_maint_id
    fill_in "User", with: @maint.user_id
    click_on "Update Maint"

    assert_text "Maint was successfully updated"
    click_on "Back"
  end

  test "should destroy Maint" do
    visit maint_url(@maint)
    click_on "Destroy this maint", match: :first

    assert_text "Maint was successfully destroyed"
  end
end
