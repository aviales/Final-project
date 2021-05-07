class Inspeccion < ApplicationRecord
  has_many :check_lists, dependent: :destroy
  belongs_to :project, :optional => true
  belongs_to :contractor, :optional => true
  
end

