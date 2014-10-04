class User < ActiveRecord::Base
  has_many :phrases
  has_many :translations

  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :trackable, :validatable, :omniauthable
end
