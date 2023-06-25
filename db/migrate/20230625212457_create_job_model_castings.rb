class CreateJobModelCastings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_model_castings do |t|
      t.references :casting_state, null: false, foreign_key: true
      t.references :model, null: false, foreign_key: true
      t.references :jobs_offer, null: false, foreign_key: true
      t.float :negociated_remuneration

      t.timestamps
    end
  end
end
