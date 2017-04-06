require 'test_helper'

class TiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tire = tires(:one)
  end

  test "should get index" do
    get tires_url
    assert_response :success
  end

  test "should get new" do
    get new_tire_url
    assert_response :success
  end

  test "should create tire" do
    assert_difference('Tire.count') do
      post tires_url, params: { tire: { car_id: @tire.car_id, case: @tire.case, dotweak: @tire.dotweak, dotyear: @tire.dotyear, producer: @tire.producer, rack: @tire.rack, storage1: @tire.storage1, storage2: @tire.storage2, tiresize: @tire.tiresize } }
    end

    assert_redirected_to tire_url(Tire.last)
  end

  test "should show tire" do
    get tire_url(@tire)
    assert_response :success
  end

  test "should get edit" do
    get edit_tire_url(@tire)
    assert_response :success
  end

  test "should update tire" do
    patch tire_url(@tire), params: { tire: { car_id: @tire.car_id, case: @tire.case, dotweak: @tire.dotweak, dotyear: @tire.dotyear, producer: @tire.producer, rack: @tire.rack, storage1: @tire.storage1, storage2: @tire.storage2, tiresize: @tire.tiresize } }
    assert_redirected_to tire_url(@tire)
  end

  test "should destroy tire" do
    assert_difference('Tire.count', -1) do
      delete tire_url(@tire)
    end

    assert_redirected_to tires_url
  end
end
