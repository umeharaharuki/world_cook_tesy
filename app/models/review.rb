class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :star

  with_options presence: true do
    validates :star_id, numericality: { other_than: 1, message: 'is valid' }
    validates :comment
  end
  belongs_to :cook
  belongs_to :user
end
