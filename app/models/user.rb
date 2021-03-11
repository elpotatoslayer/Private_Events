class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', dependent: :destroy, foreign_key: 'creator_id'

  validates :name, presence: true
end
