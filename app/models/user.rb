class User < ActiveRecord::Base
   ROLES = %w[admin moderator author banned]
   has_many :coaches
   has_one :user_events
   
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body
  

  
  def roles=(roles)
  self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
end

def roles
  ROLES.reject do |r|
    ((roles_mask || 0) & 2**ROLES.index(r)).zero?
  end
end

  before_save do
   a =  UserEvent.new
   a.user_id = self.id
   a.save
   self.user_e_id = a.id
   self.role = "user"
  end
end
