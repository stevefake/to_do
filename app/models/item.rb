require "active_record"
class Item < ActiveRecord::Base
  def item(item)
    @item = item
  end
end
