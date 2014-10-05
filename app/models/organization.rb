class Organization < ActiveRecord::Base
  validates_presence_of :name, :ein, :email
  attr_accessible :address, :description, :ein, :email, :name, :phone, :website,:password_digest, :account_manager
  has_secure_password
end
