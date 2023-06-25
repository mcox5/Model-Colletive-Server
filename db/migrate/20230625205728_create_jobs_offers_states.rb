class CreateJobsOffersStates < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs_offers_states do |t|
      t.string :status_name

      t.timestamps
    end
  end
end
