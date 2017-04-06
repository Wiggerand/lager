class Customer < ApplicationRecord
	has_many :cars

	validates :email, presence: true, format: { with: /(\S+)@(\S+)/ }, uniqueness: { case_sensitive: false} #missachtet die gross oder kleinschreibung der email adresse

	private
		
	


end
