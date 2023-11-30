class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reads


  validates :nickname, presence: true

  def remember_me
    true
  end
end
