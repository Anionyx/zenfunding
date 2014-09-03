require 'test_helper'

class DeadPeopleControllerTest < ActionController::TestCase
  setup do
    @dead_person = dead_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dead_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dead_person" do
    assert_difference('DeadPerson.count') do
      post :create, dead_person: { cause: @dead_person.cause, date_birth: @dead_person.date_birth, date_death: @dead_person.date_death, name_first: @dead_person.name_first, name_last: @dead_person.name_last, name_mid: @dead_person.name_mid, ssn: @dead_person.ssn }
    end

    assert_redirected_to dead_person_path(assigns(:dead_person))
  end

  test "should show dead_person" do
    get :show, id: @dead_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dead_person
    assert_response :success
  end

  test "should update dead_person" do
    patch :update, id: @dead_person, dead_person: { cause: @dead_person.cause, date_birth: @dead_person.date_birth, date_death: @dead_person.date_death, name_first: @dead_person.name_first, name_last: @dead_person.name_last, name_mid: @dead_person.name_mid, ssn: @dead_person.ssn }
    assert_redirected_to dead_person_path(assigns(:dead_person))
  end

  test "should destroy dead_person" do
    assert_difference('DeadPerson.count', -1) do
      delete :destroy, id: @dead_person
    end

    assert_redirected_to dead_people_path
  end
end
