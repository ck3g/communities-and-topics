class CreateCommunityTopics < ActiveRecord::Migration
  def change
    create_table :community_topics do |t|
      t.string :name
      t.integer :community_id

      t.timestamps
    end
    add_index :community_topics, :community_id
  end
end
