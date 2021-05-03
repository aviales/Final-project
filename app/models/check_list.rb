class CheckList < ApplicationRecord
  has_many :check_list_items, dependent: :destroy
  accepts_nested_attributes_for :check_list_items,
    reject_if: proc { |attributes| attributes['text'].blank? },
    allow_destroy: true
  has_many :work_areas, dependent: :destroy
  accepts_nested_attributes_for :work_areas,
    reject_if: proc { |attributes| attributes['name'].blank? },
    allow_destroy: true
  
  belongs_to :inspeccion, :optional => true
  validates :hazard_type, presence: true
  def to_s
    text
  end
  def to_s
    name
  end
end
