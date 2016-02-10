class Ticket < ActiveRecord::Base
  belongs_to :user
  validates :title, :message, :user_id, presence: true
  validates :title, uniqueness: true
end
