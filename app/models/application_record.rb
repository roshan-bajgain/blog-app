class ApplicationRecord < ActiveRecord::Base
  def current_user
    User.limit(1)
  end
end
