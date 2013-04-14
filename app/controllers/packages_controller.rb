class PackagesController < ApplicationController
	include Databasedotcom::Rails::Controller

	def index
		@packages = Package__c.all

	end
end