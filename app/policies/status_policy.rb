
class StatusPolicy < ApplicationPolicy
  def create?
    user.admin? or user.id == record.user.id
  end

  def destroy?
    user.admin? or user.id == record.user.id
  end
end