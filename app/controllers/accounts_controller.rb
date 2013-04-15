class AccountsController < ApplicationController
	before_filter :authenticate_user!
	include Databasedotcom::Rails::Controller

  def index
  	@accounts = accounts_from_current_user

  	respond_to do |format|
  		format.html
  		format.csv
  		format.xls
  	end
  end

  # Hace falta proteger el metodo show para que solo muestre las cuentas del current_user
  def show
  	@account = Account.find(params[:id])
  end
end
