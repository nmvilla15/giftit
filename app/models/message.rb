class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

#validates_presence_of :body, :conversation_id, :user_id
  validates :body, presence: true
  validates :conversation_id, presence: true
  validates :user_id, presence: true
  
end
