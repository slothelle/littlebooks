class User < ActiveRecord::Base
  attr_accessible :name, :email, :password

  has_many :mytales
  has_many :stories, :through => :mytales
  has_many :mytale_images, :through => :mytales

  has_secure_password

  validates_uniqueness_of :email
  validates_presence_of :name, :email, :password
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

  validates_length_of :name, :within => 2..20, :too_long => "must be less than 20 characters.", :too_short => "must be at least 2 characters."
  validates_length_of :password, :within => 6..15, :too_long => "must be less than 15 characters.", 
                      :too_short => "must be at least 6 characters."

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save(:validate=>false)
    end
  end
end
