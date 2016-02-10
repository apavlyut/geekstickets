class Ticket < ActiveRecord::Base
  validates :title, :message, presence: true
  validates :title, uniqueness: true
end
