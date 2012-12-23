class Community < ActiveRecord::Base
  attr_accessible :description, :name, :slug

  validate :name, presence: true, uniqueness: true

  has_many :community_topics, dependent: :destroy

  def to_param
    slug
  end
end
