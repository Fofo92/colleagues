class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      true
    end

    def new?
      create?
    end

    def show?
      true
    end

    def create?
      true
    end

    def update?
      record.event = event
    end

    def edit?
      update?
    end

    def destroy?
      record.event == event
    end

  end
end
