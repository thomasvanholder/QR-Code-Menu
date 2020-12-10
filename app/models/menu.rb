class Menu < ApplicationRecord
  belongs_to :user, optional: true
  has_many :categories

  has_one_attached :photo
end
