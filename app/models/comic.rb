class Comic < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
