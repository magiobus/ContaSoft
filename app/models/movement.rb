class Movement < ActiveRecord::Base
	has_one :account
	belongs_to :account
end
