class Account < ActiveRecord::Base
	before_save :equals_balance
	has_many :transactions


	def equals_balance
		self.finalbalance = self.balance
	end
end
