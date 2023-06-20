class UserPassword < ApplicationRecord
  # View can only view the password
  # Editor can update the password
  # Owner can update the password and share the password

  ROLES = %w{owner editor viewer}
  belongs_to :user
  belongs_to :password

  validates :role, presence: true, inclusion: { in: ROLES }
end
