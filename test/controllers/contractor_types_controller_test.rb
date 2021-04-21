require "test_helper"

class ContractorTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractor_type = contractor_types(:one)
  end

  test "should get index" do
    get contractor_types_url
    assert_response :success
  end

  test "should get new" do
    get new_contractor_type_url
    assert_response :success
  end

  test "should create contractor_type" do
    assert_difference('ContractorType.count') do
      post contractor_types_url, params: { contractor_type: { name: @contractor_type.name } }
    end

    assert_redirected_to contractor_type_url(ContractorType.last)
  end

  test "should show contractor_type" do
    get contractor_type_url(@contractor_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_contractor_type_url(@contractor_type)
    assert_response :success
  end

  test "should update contractor_type" do
    patch contractor_type_url(@contractor_type), params: { contractor_type: { name: @contractor_type.name } }
    assert_redirected_to contractor_type_url(@contractor_type)
  end

  test "should destroy contractor_type" do
    assert_difference('ContractorType.count', -1) do
      delete contractor_type_url(@contractor_type)
    end

    assert_redirected_to contractor_types_url
  end
end
