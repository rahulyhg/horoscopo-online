require 'test_helper'

class DailyHoroscopesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_horoscope = daily_horoscopes(:one)
  end

  test "should get index" do
    get daily_horoscopes_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_horoscope_url
    assert_response :success
  end

  test "should create daily_horoscope" do
    assert_difference('DailyHoroscope.count') do
      post daily_horoscopes_url, params: { daily_horoscope: { color: @daily_horoscope.color, date: @daily_horoscope.date, day_of_the_week: @daily_horoscope.day_of_the_week, numbers: @daily_horoscope.numbers, sign_id: @daily_horoscope.sign_id, text: @daily_horoscope.text } }
    end

    assert_redirected_to daily_horoscope_url(DailyHoroscope.last)
  end

  test "should show daily_horoscope" do
    get daily_horoscope_url(@daily_horoscope)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_horoscope_url(@daily_horoscope)
    assert_response :success
  end

  test "should update daily_horoscope" do
    patch daily_horoscope_url(@daily_horoscope), params: { daily_horoscope: { color: @daily_horoscope.color, date: @daily_horoscope.date, day_of_the_week: @daily_horoscope.day_of_the_week, numbers: @daily_horoscope.numbers, sign_id: @daily_horoscope.sign_id, text: @daily_horoscope.text } }
    assert_redirected_to daily_horoscope_url(@daily_horoscope)
  end

  test "should destroy daily_horoscope" do
    assert_difference('DailyHoroscope.count', -1) do
      delete daily_horoscope_url(@daily_horoscope)
    end

    assert_redirected_to daily_horoscopes_url
  end
end
