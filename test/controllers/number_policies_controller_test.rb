require 'test_helper'

class NumberPoliciesControllerTest < ActionController::TestCase
  setup do
    @number_policy = number_policies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:number_policies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create number_policy" do
    assert_difference('NumberPolicy.count') do
      post :create, number_policy: { dead_person_id: @number_policy.dead_person_id, policy_amount: @number_policy.policy_amount }
    end

    assert_redirected_to number_policy_path(assigns(:number_policy))
  end

  test "should show number_policy" do
    get :show, id: @number_policy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @number_policy
    assert_response :success
  end

  test "should update number_policy" do
    patch :update, id: @number_policy, number_policy: { dead_person_id: @number_policy.dead_person_id, policy_amount: @number_policy.policy_amount }
    assert_redirected_to number_policy_path(assigns(:number_policy))
  end

  test "should destroy number_policy" do
    assert_difference('NumberPolicy.count', -1) do
      delete :destroy, id: @number_policy
    end

    assert_redirected_to number_policies_path
  end
end
