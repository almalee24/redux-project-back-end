require 'test_helper'

class CompanyOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_order = company_orders(:one)
  end

  test "should get index" do
    get company_orders_url, as: :json
    assert_response :success
  end

  test "should create company_order" do
    assert_difference('CompanyOrder.count') do
      post company_orders_url, params: { company_order: { company_id: @company_order.company_id, company_logo: @company_order.company_logo, company_name: @company_order.company_name, company_total: @company_order.company_total, company_type: @company_order.company_type, order_id: @company_order.order_id, order_type: @company_order.order_type, user_id: @company_order.user_id, user_type: @company_order.user_type } }, as: :json
    end

    assert_response 201
  end

  test "should show company_order" do
    get company_order_url(@company_order), as: :json
    assert_response :success
  end

  test "should update company_order" do
    patch company_order_url(@company_order), params: { company_order: { company_id: @company_order.company_id, company_logo: @company_order.company_logo, company_name: @company_order.company_name, company_total: @company_order.company_total, company_type: @company_order.company_type, order_id: @company_order.order_id, order_type: @company_order.order_type, user_id: @company_order.user_id, user_type: @company_order.user_type } }, as: :json
    assert_response 200
  end

  test "should destroy company_order" do
    assert_difference('CompanyOrder.count', -1) do
      delete company_order_url(@company_order), as: :json
    end

    assert_response 204
  end
end
