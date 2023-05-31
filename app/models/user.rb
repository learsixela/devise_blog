class User < ApplicationRecord
  has_many :posts
  enum :role, [:normal_user, :author, :admin]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end

#0,1,2