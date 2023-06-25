class CreateJobModelWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :job_model_works do |t|
      t.references :contract, null: false, foreign_key: true
      t.references :job_model_casting, null: false, foreign_key: true
      t.references :work_state, null: false, foreign_key: true
      t.date :work_date
      t.integer :model_rate
      t.integer :company_rate

      t.timestamps
    end
  end
end
