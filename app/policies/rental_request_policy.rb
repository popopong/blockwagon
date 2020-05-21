class RentalRequestPolicy < ApplicationPolicy
  def create?
    true
  end

  def accept_request?
    user_is_owner_of_vhs?
  end

  def reject_request?
    user_is_owner_of_vhs?
  end

  def edit?
    user_is_owner_of_rental?
  end

  def update?
  end
  class Scope < Scope
    def resolve
      scope.joins(:video_cassette).where("rental_requests.user_id = ? OR video_cassettes.user_id = ?", user.id, user.id)
    end
  end

  private
  def user_is_owner_of_rental?
    record.user == user
  end

  def user_is_owner_of_vhs?
    record.video_cassette.user == user
  end
end
