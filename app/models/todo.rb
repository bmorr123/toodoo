class Todo < ApplicationRecord
    belongs_to :user
    has_many :items, dependent: :destroy

    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :category, presence: true, length: { minimum: 5, maximum: 50 }
    validates :user, presence: true
end
