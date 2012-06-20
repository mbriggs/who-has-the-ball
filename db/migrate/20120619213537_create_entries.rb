class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :computer_name
      t.string :name
      t.boolean :testing, default: false
      t.datetime :last_had_the_ball_at
      t.timestamps
    end
  end
end
