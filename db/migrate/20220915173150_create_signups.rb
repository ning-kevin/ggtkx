class CreateSignups < ActiveRecord::Migration[7.0]
  def change
    create_table :signups do |t|
      t.references :performer, null: false, foreign_key: true
      t.date :perform_date, null: false
      t.integer :round, null: false
      t.string :wechat_id
      t.string :email, null: false
      t.boolean :first_time

      t.timestamps
    end
  end
end
