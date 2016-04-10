require "active_record"
class User < ActiveRecord::Base
  def user(user_name)
    @user = user_name
  end
end
