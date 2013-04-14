class ApplicationController < ActionController::Base
	include Databasedotcom::Rails::Controller

  protect_from_forgery
end
