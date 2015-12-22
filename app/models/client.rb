class Client < ActiveRecord::Base
	has_many :transactions

	enum status: [:delay, :at_day, :service_suspend, :banned]
end
