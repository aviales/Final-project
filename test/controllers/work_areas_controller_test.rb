require "test_helper"

class WorkAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_area = work_areas(:one)
  end

  test "should get index" do
    get work_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_work_area_url
    assert_response :success
  end

  test "should create work_area" do
    assert_difference('WorkArea.count') do
      post work_areas_url, params: { work_area: { name: @work_area.name } }
    end

    assert_redirected_to work_area_url(WorkArea.last)
  end

  test "should show work_area" do
    get work_area_url(@work_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_area_url(@work_area)
    assert_response :success
  end

  test "should update work_area" do
    patch work_area_url(@work_area), params: { work_area: { name: @work_area.name } }
    assert_redirected_to work_area_url(@work_area)
  end

  test "should destroy work_area" do
    assert_difference('WorkArea.count', -1) do
      delete work_area_url(@work_area)
    end

    assert_redirected_to work_areas_url
  end
end
