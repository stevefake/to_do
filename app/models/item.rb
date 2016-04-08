class Item < ActiveRecord::Base
  def to_do(item)
    @item = item
  end
end
