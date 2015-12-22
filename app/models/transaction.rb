class Transaction < ActiveRecord::Base
  belongs_to :user
  belongs_to :account
  belongs_to :client
end
