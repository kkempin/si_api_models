class Campaign < ActiveRecord::Base

  CAMPAIGN_TYPES = %w(photos_seeding product_placement contest)

  has_many :bookings

  validates :name,          presence: true
  validates :campaign_type, presence: true

  state_machine :status, initial: :draft do
    event :activate do
      transition :draft => :active
    end

    event :stop do
      transition [:active] => :finished
    end

    event :archive do
      transition :finished => :archived
    end
  end
  
  STATES = state_machines[:status].states.map(&:name)
end
