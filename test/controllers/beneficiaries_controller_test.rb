require 'test_helper'

class BeneficiariesControllerTest < ActionController::TestCase
  setup do
    @beneficiary = beneficiaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beneficiaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beneficiary" do
    assert_difference('Beneficiary.count') do
      post :create, beneficiary: { date_birth: @beneficiary.date_birth, date_death: @beneficiary.date_death, dead_person_id: @beneficiary.dead_person_id, name_first: @beneficiary.name_first, name_last: @beneficiary.name_last, name_mid: @beneficiary.name_mid, policy_id: @beneficiary.policy_id, ssn: @beneficiary.ssn }
    end

    assert_redirected_to beneficiary_path(assigns(:beneficiary))
  end

  test "should show beneficiary" do
    get :show, id: @beneficiary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beneficiary
    assert_response :success
  end

  test "should update beneficiary" do
    patch :update, id: @beneficiary, beneficiary: { date_birth: @beneficiary.date_birth, date_death: @beneficiary.date_death, dead_person_id: @beneficiary.dead_person_id, name_first: @beneficiary.name_first, name_last: @beneficiary.name_last, name_mid: @beneficiary.name_mid, policy_id: @beneficiary.policy_id, ssn: @beneficiary.ssn }
    assert_redirected_to beneficiary_path(assigns(:beneficiary))
  end

  test "should destroy beneficiary" do
    assert_difference('Beneficiary.count', -1) do
      delete :destroy, id: @beneficiary
    end

    assert_redirected_to beneficiaries_path
  end
end
