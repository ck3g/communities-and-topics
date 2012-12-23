class Community < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :community_topics, dependent: :destroy
end
