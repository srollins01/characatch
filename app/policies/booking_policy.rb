class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def update?
    @booking.user = user
  end

  def accept?
    true
  end
end
