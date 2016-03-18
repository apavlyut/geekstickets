class User < ActiveRecord::Base
  has_many :projects
  has_many :tickets
  has_many :comments
  validates :email, uniqueness: true
  validates :name, :email, presence: true
  has_secure_password

  def make_manager!
    update(role: 'manager')
  end

  #HAHA
  def make_user!
    update(role: 'user')
  end
end
