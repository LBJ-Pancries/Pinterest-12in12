class Pin < ApplicationRecord
  belongs_to :user
  validates :title, presence: true

  has_attached_file :image, styles: { medium: "300*300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
