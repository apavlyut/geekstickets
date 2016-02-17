class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, :message, :user_id, presence: true
  validates :title, uniqueness: true
end
