class Inspeccion < ApplicationRecord
  has_many :check_lists
  belongs_to :project, :optional => true
end
