module AccountsHelper
	def last_package_version account_id
		packages = Package__c.find_all_by_Account__c(account_id)

		versions = []
		packages.each do |package|
			versions << package.Version__c.to_f
		end

		versions.sort!.last
	end

		def last_package_extensions account_id
		packages = Package__c.find_all_by_Account__c(account_id)

		versions = []
		packages.each do |package|
			versions << package.Extensions__c.to_i
		end

		versions.sort.last
	end
end

def packages_by_account account_id
	packages = Package__c.find_all_by_Account__c(account_id)
end
