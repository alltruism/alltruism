class Organization < ActiveRecord::Base
  attr_accessible :address, :description, :ein, :email, :name, :phone, :website, :password_digest
  has_secure_password
end
