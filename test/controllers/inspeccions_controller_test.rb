require "test_helper"

class InspeccionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspeccion = inspeccions(:one)
  end

  test "should get index" do
    get inspeccions_url
    assert_response :success
  end

  test "should get new" do
    get new_inspeccion_url
    assert_response :success
  end

  test "should create inspeccion" do
    assert_difference('Inspeccion.count') do
      post inspeccions_url, params: { inspeccion: { periodicity: @inspeccion.periodicity } }
    end

    assert_redirected_to inspeccion_url(Inspeccion.last)
  end

  test "should show inspeccion" do
    get inspeccion_url(@inspeccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_inspeccion_url(@inspeccion)
    assert_response :success
  end

  test "should update inspeccion" do
    patch inspeccion_url(@inspeccion), params: { inspeccion: { periodicity: @inspeccion.periodicity } }
    assert_redirected_to inspeccion_url(@inspeccion)
  end

  test "should destroy inspeccion" do
    assert_difference('Inspeccion.count', -1) do
      delete inspeccion_url(@inspeccion)
    end

    assert_redirected_to inspeccions_url
  end
end
