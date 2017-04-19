require 'test_helper'

class CombinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @combination = combinations(:one)
  end

  test "should get index" do
    get combinations_url
    assert_response :success
  end

  test "should get new" do
    get new_combination_url
    assert_response :success
  end

  test "should create combination" do
    assert_difference('Combination.count') do
      post combinations_url, params: { combination: { friendship_grade: @combination.friendship_grade, friendship_text: @combination.friendship_text, id_sign_a: @combination.id_sign_a, id_sign_b: @combination.id_sign_b, integer: @combination.integer, love_grade: @combination.love_grade, love_text: @combination.love_text, sex_grade: @combination.sex_grade, sex_text: @combination.sex_text, work_grade: @combination.work_grade, work_text: @combination.work_text } }
    end

    assert_redirected_to combination_url(Combination.last)
  end

  test "should show combination" do
    get combination_url(@combination)
    assert_response :success
  end

  test "should get edit" do
    get edit_combination_url(@combination)
    assert_response :success
  end

  test "should update combination" do
    patch combination_url(@combination), params: { combination: { friendship_grade: @combination.friendship_grade, friendship_text: @combination.friendship_text, id_sign_a: @combination.id_sign_a, id_sign_b: @combination.id_sign_b, integer: @combination.integer, love_grade: @combination.love_grade, love_text: @combination.love_text, sex_grade: @combination.sex_grade, sex_text: @combination.sex_text, work_grade: @combination.work_grade, work_text: @combination.work_text } }
    assert_redirected_to combination_url(@combination)
  end

  test "should destroy combination" do
    assert_difference('Combination.count', -1) do
      delete combination_url(@combination)
    end

    assert_redirected_to combinations_url
  end
end
