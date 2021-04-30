class CheckList < ApplicationRecord
  has_many :check_list_items
  has_many :work_areas
  belongs_to :inspeccion, :optional => true
end
