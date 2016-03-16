class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end

    def show?
      user
    end

    def create?
      user && (user.role == 'manager')
    end
  end
end
