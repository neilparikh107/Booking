require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_url
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { balcony: @booking.balcony, date: @booking.date, fridge: @booking.fridge, in_win: @booking.in_win, out_win: @booking.out_win, postcode: @booking.postcode, street: @booking.street, suburb: @booking.suburb, time: @booking.time, type: @booking.type } }
    end

    assert_redirected_to booking_url(Booking.last)
  end

  test "should show booking" do
    get booking_url(@booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_url(@booking)
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { balcony: @booking.balcony, date: @booking.date, fridge: @booking.fridge, in_win: @booking.in_win, out_win: @booking.out_win, postcode: @booking.postcode, street: @booking.street, suburb: @booking.suburb, time: @booking.time, type: @booking.type } }
    assert_redirected_to booking_url(@booking)
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking)
    end

    assert_redirected_to bookings_url
  end
end
