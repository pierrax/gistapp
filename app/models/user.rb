class User < ActiveRecord::Base
  has_many :gists

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }
end
