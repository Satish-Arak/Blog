class Article < ApplicationRecord
  validates :title, presence: true
  has_many :comments,  dependent: :destroy
  # belongs_to :user
  # validates :user_id, presence: true
end
