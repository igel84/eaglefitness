class Ability
  include CanCan::Ability

  class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user || User.new # for guest
    @user.roles.each { |role| send(role) }

    if @user.roles.size == 0
      can :read, Event, Pages, Coaches, Categories
      
    end
  end

  def user
    can :read, Event, Pages, Coaches, Categories
  end
  
   def coach
    can :manage, Event
    can :read Page, Coach, Categoriy
  end

  def admin
    manager
    can :manage, :all
  end
end

end
