class Password < ApplicationRecord
  has_many :user_passwords
  has_many :users, through: :user_passwords

  # allows us to query encrypted usernames
  encrypts :username, deterministic: true

  encrypts :password
end
