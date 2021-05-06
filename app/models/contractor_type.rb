class ContractorType < ApplicationRecord
  belongs_to :contractor, :optional => true
  validates :name, presence: true
  def to_s
    name
  end
end
