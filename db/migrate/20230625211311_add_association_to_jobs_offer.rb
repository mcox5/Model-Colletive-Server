class AddAssociationToJobsOffer < ActiveRecord::Migration[7.0]
  def change
    add_reference :jobs_offers, :jobs_offers_state, null: false, foreign_key: true
  end
end
