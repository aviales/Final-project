class ContractorType < ApplicationRecord
  belongs_to :contractor, :optional => true
end
