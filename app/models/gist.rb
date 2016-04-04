class Gist < ActiveRecord::Base
  belongs_to :user

  validates :description, presence: true
  validates :file_name, presence: true
  validates :code, presence: true

  scope :no_secret, -> { where(secret: false) }

  def self.search(search)
    where(secret: false).where("description LIKE ? OR file_name LIKE ? OR code LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
