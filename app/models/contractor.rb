class Contractor < ApplicationRecord
  has_many :inspeccions, dependent: :destroy
  has_many :contractor_types, dependent: :destroy
  accepts_nested_attributes_for :contractor_types,
    reject_if: proc { |attributes| attributes['text'].blank? },
    allow_destroy: true
  has_many :check_lists, dependent: :destroy
  belongs_to :user, :optional => true
  validates :name, presence: true
  
  def to_s
    name
  end

end
