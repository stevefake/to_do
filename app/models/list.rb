require "active_record"
class List < ActiveRecord::Base
  def list(list_name)
    @list = list_name
  end
end
