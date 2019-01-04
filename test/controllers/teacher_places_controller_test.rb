require 'test_helper'

class TeacherPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_place = teacher_places(:one)
  end

  test "should get index" do
    get teacher_places_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_place_url
    assert_response :success
  end

  test "should create teacher_place" do
    assert_difference('TeacherPlace.count') do
      post teacher_places_url, params: { teacher_place: { place_id: @teacher_place.place_id, teacher_id: @teacher_place.teacher_id } }
    end

    assert_redirected_to teacher_place_url(TeacherPlace.last)
  end

  test "should show teacher_place" do
    get teacher_place_url(@teacher_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_place_url(@teacher_place)
    assert_response :success
  end

  test "should update teacher_place" do
    patch teacher_place_url(@teacher_place), params: { teacher_place: { place_id: @teacher_place.place_id, teacher_id: @teacher_place.teacher_id } }
    assert_redirected_to teacher_place_url(@teacher_place)
  end

  test "should destroy teacher_place" do
    assert_difference('TeacherPlace.count', -1) do
      delete teacher_place_url(@teacher_place)
    end

    assert_redirected_to teacher_places_url
  end
end
