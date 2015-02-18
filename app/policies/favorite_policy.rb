class FavoritePolicy
  attr_reader :user, :favorite

  class Scope < Scope
    def resolve
      scope
    end
  end

  def initialize(user, post)
  	@user = user
  	@favorite = favorite
  end
end
