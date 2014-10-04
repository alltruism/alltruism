class Organization < ActiveRecord::Base
  attr_accessible :address, :description, :ein, :email, :name, :phone, :website
end
