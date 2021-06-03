class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar
  enum state: { offline: 0, online: 1 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
