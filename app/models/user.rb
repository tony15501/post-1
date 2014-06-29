class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
 
 validates :nombre, uniqueness: {message: "no se puede repetir el nombre de usuario"}, presence: {message: "campo obligatorio"}
 	validates :email, :password,   presence: true


end
