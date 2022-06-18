class Public::CustomersController < ApplicationController
  def show

  end

  def edit
    @customer = Customer.find(current_customer.id)
  end

  def update
    current_customer.update(customer_params)
    redirect_to customers_my_page_path(current_customer.id)
  end

  def confirm

  end

  def withdraw
    @customer = Customer.find(current_customer.id)
    @customer.update(is_active: false)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  private
    def customer_params
      params.require(:customer).permit(:last_name, :first_name,
      :last_name_kana, :first_name_kana, :email, :postal_code,
      :address, :telephone_number, :is_active)
    end
end
