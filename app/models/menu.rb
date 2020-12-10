class Menu < ApplicationRecord
  belongs_to :user, optional: true
  has_many :categories, dependent: :destroy

  # save only new restaurant if it has categories (all_blank)
  accepts_nested_attributes_for :categories, reject_if: :all_blank, allow_destroy: true

  has_one_attached :photo
end
