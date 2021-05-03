class Contractor < ApplicationRecord
  has_many :inspeccions, dependent: :destroy
  has_many :contractor_types, dependent: :destroy
  has_many :check_lists, dependent: :destroy
  belongs_to :user, :optional => true

end
