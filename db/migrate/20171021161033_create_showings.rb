class CreateShowings < ActiveRecord::Migration[5.1]
  def change
    create_table :showings do |t|
      t.datetime :start_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
