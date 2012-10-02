class Ability
  include CanCan::Ability

  class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user || User.new # for guest
    @user.roles.each { |role| send(role) }

    if @user.roles.size == 0
      can :read, :all #for guest without roles
    end
  end

  def coach
    can :manage, Event
  end
   def coach
    can :read, Event
  end

  def admin
    manager
    can :manage, :all
  end
end

end
