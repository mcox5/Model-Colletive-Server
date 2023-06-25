class JobsOffer < ApplicationRecord
  belongs_to :company
  belongs_to :jobs_offers_state
  has_many :jobs_offers_state
end
