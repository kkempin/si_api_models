class SocialMediaProfile < ActiveRecord::Base

  belongs_to :user
  has_many :bookings

  validates_uniqueness_of :profile_name
  validates :profile_name, presence: true, format: { with: /\A[a-zA-Z0-9_.]+\Z/ }

  delegate :email, :first_name, to: :user, prefix: true
end
