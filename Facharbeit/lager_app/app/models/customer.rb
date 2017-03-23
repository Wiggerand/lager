class Customer < ApplicationRecord
validates :email, presence: true, format: { with: /(\S+)@(\S+)/ }, uniqueness: { case_sensitive: false}
end
