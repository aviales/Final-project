class CheckList < ApplicationRecord
  has_many :check_list_items, dependent: :destroy
  accepts_nested_attributes_for :check_list_items,
  reject_if: proc { |attr| attr['hazard_type'].blank? },
  allow_destroy: true
  
  has_many :work_areas, dependent: :destroy
  belongs_to :inspeccion, :optional => true
  validates :hazard_type, presence: true
  def to_s
    hazard_type
  end
end
