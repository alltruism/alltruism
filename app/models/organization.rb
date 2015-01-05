class Organization < ActiveRecord::Base
  has_many :events
  attr_accessible :name, :ein, :email, :address, :description, :phone, :website,:image_path
  before_validation :clean_ein
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :ein, presence: true, uniqueness: true, format: { with: /\A\d{9}\z/ }

private

  def clean_ein
    self[:ein] = ein.to_s.gsub(/\D/, '')
  end

end
