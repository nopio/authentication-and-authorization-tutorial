class User < ActiveRecord::Base
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products, dependent: :destroy
  def admin?
    has_role?(:admin)
  end

  def client?
    has_role?(:client)
  end 
end