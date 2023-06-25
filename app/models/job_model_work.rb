class JobModelWork < ApplicationRecord
  belongs_to :contract
  belongs_to :job_model_casting
  belongs_to :work_state
end
