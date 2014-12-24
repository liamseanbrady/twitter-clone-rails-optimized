class CreateLeaderFollowers < ActiveRecord::Migration
  def change
    create_table :leader_followers do |t|
      t.column :leader_id, :integer
      t.column :follower_id, :integer

      t.timestamps
    end
  end
end
