class Menu < ApplicationRecord
  belongs_to :user
  has_many :categories

  has_one_attached :photo
end
