class Model < ApplicationRecord
  belongs_to :user
  has_many :job_model_castings
end
