class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relationship
  has_many :payments
  has_many :orders
  has_many :listings, dependent: :destroy

  # validation
  validates :email, uniqueness: true
end
