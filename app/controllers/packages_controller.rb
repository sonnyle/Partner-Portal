class PackagesController < ApplicationController
	before_filter :authenticate_user!
	include Databasedotcom::Rails::Controller

	def index
		@packages = Package__c.all

	end
end