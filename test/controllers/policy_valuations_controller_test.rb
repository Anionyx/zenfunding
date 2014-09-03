require 'test_helper'

class PolicyValuationsControllerTest < ActionController::TestCase
  setup do
    @policy_valuation = policy_valuations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policy_valuations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policy_valuation" do
    assert_difference('PolicyValuation.count') do
      post :create, policy_valuation: { amount: @policy_valuation.amount, date_assign: @policy_valuation.date_assign, dead_person_id: @policy_valuation.dead_person_id, policy_id: @policy_valuation.policy_id }
    end

    assert_redirected_to policy_valuation_path(assigns(:policy_valuation))
  end

  test "should show policy_valuation" do
    get :show, id: @policy_valuation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @policy_valuation
    assert_response :success
  end

  test "should update policy_valuation" do
    patch :update, id: @policy_valuation, policy_valuation: { amount: @policy_valuation.amount, date_assign: @policy_valuation.date_assign, dead_person_id: @policy_valuation.dead_person_id, policy_id: @policy_valuation.policy_id }
    assert_redirected_to policy_valuation_path(assigns(:policy_valuation))
  end

  test "should destroy policy_valuation" do
    assert_difference('PolicyValuation.count', -1) do
      delete :destroy, id: @policy_valuation
    end

    assert_redirected_to policy_valuations_path
  end
end
