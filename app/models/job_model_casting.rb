class JobModelCasting < ApplicationRecord
  belongs_to :casting_state
  belongs_to :model
  belongs_to :jobs_offer
  has_many :job_model_works
end
