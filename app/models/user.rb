class User < ActiveRecord::Base
   ROLES = %w[admin moderator author banned]
   has_many :coaches
   has_many :user_events
   
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body
  before_save do
  a =  UserEvent.new
  a.save
  self.user_e_id = a.id
  end
end
