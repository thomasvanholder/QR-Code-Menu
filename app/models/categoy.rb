class Categoy < ApplicationRecord
  belongs_to :menu
  has_many_items
end
