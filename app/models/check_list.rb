class CheckList < ApplicationRecord
  has_many :check_list_items, dependent: :destroy
  accepts_nested_attributes_for :check_list_items,
    reject_if: proc { |attributes| attributes['text'].blank? },
    allow_destroy: true
  has_one :work_area, dependent: :destroy
  accepts_nested_attributes_for :work_area,
    reject_if: proc { |attributes| attributes['name'].blank? },
    allow_destroy: true
  
  belongs_to :inspeccion, :optional => true
  validates :hazard_type, presence: true
 
  def to_s
    name
  end
end
