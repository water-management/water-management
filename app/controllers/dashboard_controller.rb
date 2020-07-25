class DashboardController < ApplicationController
  before_action :authenticate_meter_reader!

  def index
    @meter_reader = MeterReader.find(current_meter_reader.id);
  end

  def input
    if session[:customer_id].nil?
      redirect_to root_path
    else
      @customer = Customer.find(session[:customer_id])
    end    
  end

  def search
    meter_number = params[:meter_number]

    customer = Customer.find_by(meter_number: meter_number)

    if customer
      session[:customer_id] = customer.id
      redirect_to dashboard_input_path
    else      
      flash[:danger] = "Wrong input"
      redirect_to root_path
    end
  end
end
