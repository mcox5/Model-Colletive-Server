class CreateWorkStates < ActiveRecord::Migration[7.0]
  def change
    create_table :work_states do |t|
      t.string :work_state_name

      t.timestamps
    end
  end
end
