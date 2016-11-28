require 'test_helper'

class ConcertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get concerts_index_url
    assert_response :success
  end

  test "should get bizzle" do
    get concerts_bizzle_url
    assert_response :success
  end

  test "should get datin" do
    get concerts_datin_url
    assert_response :success
  end

  test "should get lecrae" do
    get concerts_lecrae_url
    assert_response :success
  end

end
