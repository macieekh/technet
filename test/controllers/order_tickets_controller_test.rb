require 'test_helper'

class OrderTicketsControllerTest < ActionController::TestCase
  setup do
    @order_ticket = order_tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_ticket" do
    assert_difference('OrderTicket.count') do
      post :create, order_ticket: { description: @order_ticket.description }
    end

    assert_redirected_to order_ticket_path(assigns(:order_ticket))
  end

  test "should show order_ticket" do
    get :show, id: @order_ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_ticket
    assert_response :success
  end

  test "should update order_ticket" do
    patch :update, id: @order_ticket, order_ticket: { description: @order_ticket.description }
    assert_redirected_to order_ticket_path(assigns(:order_ticket))
  end

  test "should destroy order_ticket" do
    assert_difference('OrderTicket.count', -1) do
      delete :destroy, id: @order_ticket
    end

    assert_redirected_to order_tickets_path
  end
end
