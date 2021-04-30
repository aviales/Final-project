class Contractor < ApplicationRecord
  has_many :inspeccions
  has_many :contractor_types
  has_many :check_lists
  belongs_to :user, :optional => true

end
