class ApplicationController < ActionController::Base
	include Databasedotcom::Rails::Controller

	def accounts_from_current_user
		accounts = []
		current_user.RelatedAccounts.each do |relatedaccount|
			Account.find_all_by_Canal__c(relatedaccount.canal_id).each do |account|
				accounts << account
			end
		end

		return accounts
	end


  protect_from_forgery
end
