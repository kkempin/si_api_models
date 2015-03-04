class Booking < ActiveRecord::Base

  belongs_to :campaign
  belongs_to :social_media_profile

  validates :campaign, presence: true
  validates :social_media_profile_id, presence: true, uniqueness: { scope: :campaign_id }

  state_machine :status, initial: :offered do
    event :change_to_offered do
      transition any => :offered
    end

    event :change_to_expired do
      transition :offered => :expired
    end

    event :change_to_accepted do
      transition :offered => :accepted
    end

    event :change_to_declined do
      transition :offered => :declined
    end
  end

  STATES = state_machines[:status].states.map(&:name)
end
