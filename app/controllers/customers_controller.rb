class CustomersController < InheritedResources::Base

  def update
    update!(:notice => "Great! Customer has updated successfully.") { customers_url }
  end

  def import
    Customer.import(params[:import][:customer_csv])
    redirect_to customers_path
  end

  private

    def customer_params
      params.require(:customer).permit(:full_name, :email, :city, :country, :zipcode, :address_line_1, :pan_number, :state)
    end


end
