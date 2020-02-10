require 'test_helper'

class LamairiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lamairy = lamairies(:one)
  end

  test "should get index" do
    get lamairies_url
    assert_response :success
  end

  test "should get new" do
    get new_lamairy_url
    assert_response :success
  end

  test "should create lamairy" do
    assert_difference('Lamairie.count') do
      post lamairies_url, params: { lamairy: { description: @lamairy.description, nom: @lamairy.nom } }
    end

    assert_redirected_to lamairy_url(Lamairie.last)
  end

  test "should show lamairy" do
    get lamairy_url(@lamairy)
    assert_response :success
  end

  test "should get edit" do
    get edit_lamairy_url(@lamairy)
    assert_response :success
  end

  test "should update lamairy" do
    patch lamairy_url(@lamairy), params: { lamairy: { description: @lamairy.description, nom: @lamairy.nom } }
    assert_redirected_to lamairy_url(@lamairy)
  end

  test "should destroy lamairy" do
    assert_difference('Lamairie.count', -1) do
      delete lamairy_url(@lamairy)
    end

    assert_redirected_to lamairies_url
  end
end
