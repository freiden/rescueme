class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

# User model associations:
  has_many :created_tickets, class_name: "Ticket", foreign_key: "user_id", :inverse_of => :user
  has_many :tickets, foreign_key: "assistant_id", :inverse_of => :assistant

# User model validations:
validates :first_name, :last_name, :email, presence: true
validates :email, uniqueness: true
end
