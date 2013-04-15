class AccountsController < ApplicationController
	include Databasedotcom::Rails::Controller

  def index
  	@accounts = Account.all

  	respond_to do |format|
  		format.html
  		format.xls 
  	end
  end

  def show
  	@account = Account.find(params[:id])
  end
end
