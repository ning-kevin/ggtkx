class CreatePerformers < ActiveRecord::Migration[7.0]
  def change
    create_table :performers do |t|
      t.string :name, null: false
      t.string :wechat_id
      t.string :email, null: false
      t.integer :p_times
      t.text :description

      t.timestamps
    end
  end
end
