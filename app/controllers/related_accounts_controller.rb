class RelatedAccountsController < ApplicationController
	before_filter :authenticate_user!

  def index
  	@related_accounts = current_user.RelatedAccounts
  end

  def show
  end

  def edit
  end
end
