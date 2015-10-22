class User < ActiveRecord::Base
  has_many :collaborations
  has_many :developments
  has_many :informations
  has_many :insights
  has_many :leaderships
  has_many :logistics
  has_many :momenta
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
