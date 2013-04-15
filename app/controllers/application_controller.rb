class ApplicationController < ActionController::Base
	include Databasedotcom::Rails::Controller

	# Looks for for all the accounts of the related accounts model from that specific user
	# and puts them in an array for the Accounts controller
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
