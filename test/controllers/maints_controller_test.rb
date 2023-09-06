require "test_helper"

class MaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maint = maints(:one)
  end

  test "should get index" do
    get maints_url
    assert_response :success
  end

  test "should get new" do
    get new_maint_url
    assert_response :success
  end

  test "should create maint" do
    assert_difference("Maint.count") do
      post maints_url, params: { maint: { date: @maint.date, machine_id: @maint.machine_id, materials: @maint.materials, photo: @maint.photo, type_engine_id: @maint.type_engine_id, type_maint_id: @maint.type_maint_id, user_id: @maint.user_id } }
    end

    assert_redirected_to maint_url(Maint.last)
  end

  test "should show maint" do
    get maint_url(@maint)
    assert_response :success
  end

  test "should get edit" do
    get edit_maint_url(@maint)
    assert_response :success
  end

  test "should update maint" do
    patch maint_url(@maint), params: { maint: { date: @maint.date, machine_id: @maint.machine_id, materials: @maint.materials, photo: @maint.photo, type_engine_id: @maint.type_engine_id, type_maint_id: @maint.type_maint_id, user_id: @maint.user_id } }
    assert_redirected_to maint_url(@maint)
  end

  test "should destroy maint" do
    assert_difference("Maint.count", -1) do
      delete maint_url(@maint)
    end

    assert_redirected_to maints_url
  end
end
