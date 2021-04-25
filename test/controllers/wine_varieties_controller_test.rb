require 'test_helper'

class WineVarietiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine_variety = wine_varieties(:one)
  end

  test "should get index" do
    get wine_varieties_url
    assert_response :success
  end

  test "should get new" do
    get new_wine_variety_url
    assert_response :success
  end

  test "should create wine_variety" do
    assert_difference('WineVariety.count') do
      post wine_varieties_url, params: { wine_variety: {  } }
    end

    assert_redirected_to wine_variety_url(WineVariety.last)
  end

  test "should show wine_variety" do
    get wine_variety_url(@wine_variety)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_variety_url(@wine_variety)
    assert_response :success
  end

  test "should update wine_variety" do
    patch wine_variety_url(@wine_variety), params: { wine_variety: {  } }
    assert_redirected_to wine_variety_url(@wine_variety)
  end

  test "should destroy wine_variety" do
    assert_difference('WineVariety.count', -1) do
      delete wine_variety_url(@wine_variety)
    end

    assert_redirected_to wine_varieties_url
  end
end
