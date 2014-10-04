class User < ActiveRecord::Base
  attr_accessible :email, :fname, :lname, :location, :password_digest
end
