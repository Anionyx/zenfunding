require 'test_helper'

class FinancialsControllerTest < ActionController::TestCase
  setup do
    @financial = financials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financial" do
    assert_difference('Financial.count') do
      post :create, financial: { amount: @financial.amount, date_payment: @financial.date_payment, dead_person_id: @financial.dead_person_id, description: @financial.description, payment_method: @financial.payment_method, sequence: @financial.sequence, status: @financial.status, transaction_item: @financial.transaction_item }
    end

    assert_redirected_to financial_path(assigns(:financial))
  end

  test "should show financial" do
    get :show, id: @financial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financial
    assert_response :success
  end

  test "should update financial" do
    patch :update, id: @financial, financial: { amount: @financial.amount, date_payment: @financial.date_payment, dead_person_id: @financial.dead_person_id, description: @financial.description, payment_method: @financial.payment_method, sequence: @financial.sequence, status: @financial.status, transaction_item: @financial.transaction_item }
    assert_redirected_to financial_path(assigns(:financial))
  end

  test "should destroy financial" do
    assert_difference('Financial.count', -1) do
      delete :destroy, id: @financial
    end

    assert_redirected_to financials_path
  end
end
