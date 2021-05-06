class Inspeccion < ApplicationRecord
  has_many :check_lists, dependent: :destroy
  accepts_nested_attributes_for :check_lists,
    reject_if: proc { |attributes| attributes['text'].blank? },
    allow_destroy: true
  belongs_to :project, :optional => true
  belongs_to :contractor, :optional => true
  validates :hazard_type, presence: true
  def to_s
    hazard_type
  end
end

