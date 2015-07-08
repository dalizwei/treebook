
class StatusPolicy < ApplicationPolicy
  def edit?
    user.admin? or user.id == record.user.id
  end
  def create?
    user.admin? or user.id == record.user.id
  end

  def destroy?
    user.admin? or user.id == record.user.id
  end
end