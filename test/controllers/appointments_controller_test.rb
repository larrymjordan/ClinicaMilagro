require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  setup do
    @appointment = appointments(:one)
    sign_in users(:two)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      post :create, appointment: { date: @appointment.date, description: @appointment.description, doctor_id: @appointment.doctor_id, hour: @appointment.hour, patient_id: @appointment.patient_id, state: @appointment.state }
    end

    assert_redirected_to appointment_path(assigns(:appointment))
  end

  test "should show appointment" do
    get :show, id: @appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appointment
    assert_response :success
  end

  test "should update appointment" do
    patch :update, id: @appointment, appointment: { date: @appointment.date, description: @appointment.description, doctor_id: @appointment.doctor_id, hour: @appointment.hour, patient_id: @appointment.patient_id, state: @appointment.state }
    assert_redirected_to appointment_path(assigns(:appointment))
  end
end
