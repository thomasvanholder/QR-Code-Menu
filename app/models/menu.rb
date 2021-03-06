class Menu < ApplicationRecord
  belongs_to :user, optional: true
  has_many :categories, dependent: :destroy
  has_many :items, through: :categories

  # save only new restaurant if it has categories (all_blank)
  # avoid validation block because restaurant is not yet created
  accepts_nested_attributes_for :categories, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true

  has_one_attached :photo
end
