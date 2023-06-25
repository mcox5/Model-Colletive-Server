class CreateJobsOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs_offers do |t|
      t.references :company, null: false, foreign_key: true
      t.string :name
      t.string :location
      t.float :remuneration
      t.date :limit_date
      t.integer :duration
      t.string :description

      t.timestamps
    end
  end
end
