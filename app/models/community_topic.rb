class CommunityTopic < ActiveRecord::Base
  attr_accessible :community_id, :name

  belongs_to :community
end
