class Organization < ActiveRecord::Base
  attr_accessible :address, :description, :ein, :email, :name, :phone, :website,:password_digest, :account_manager
  has_secure_password
end
