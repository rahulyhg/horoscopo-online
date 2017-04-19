require 'test_helper'

class WeeklyHoroscopesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weekly_horoscope = weekly_horoscopes(:one)
  end

  test "should get index" do
    get weekly_horoscopes_url
    assert_response :success
  end

  test "should get new" do
    get new_weekly_horoscope_url
    assert_response :success
  end

  test "should create weekly_horoscope" do
    assert_difference('WeeklyHoroscope.count') do
      post weekly_horoscopes_url, params: { weekly_horoscope: { final_date: @weekly_horoscope.final_date, initial_date: @weekly_horoscope.initial_date, sign_id: @weekly_horoscope.sign_id, text: @weekly_horoscope.text } }
    end

    assert_redirected_to weekly_horoscope_url(WeeklyHoroscope.last)
  end

  test "should show weekly_horoscope" do
    get weekly_horoscope_url(@weekly_horoscope)
    assert_response :success
  end

  test "should get edit" do
    get edit_weekly_horoscope_url(@weekly_horoscope)
    assert_response :success
  end

  test "should update weekly_horoscope" do
    patch weekly_horoscope_url(@weekly_horoscope), params: { weekly_horoscope: { final_date: @weekly_horoscope.final_date, initial_date: @weekly_horoscope.initial_date, sign_id: @weekly_horoscope.sign_id, text: @weekly_horoscope.text } }
    assert_redirected_to weekly_horoscope_url(@weekly_horoscope)
  end

  test "should destroy weekly_horoscope" do
    assert_difference('WeeklyHoroscope.count', -1) do
      delete weekly_horoscope_url(@weekly_horoscope)
    end

    assert_redirected_to weekly_horoscopes_url
  end
end
