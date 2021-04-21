class AdminUser < ApplicationRecord

  has_many :contractors
  has_many :projects
  has_many :inspeccions
  has_many :check_lists

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
end
