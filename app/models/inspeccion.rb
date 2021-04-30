class Inspeccion < ApplicationRecord
  has_many :check_lists
  belongs_to :project

  scope :having_dob_between, ->(start_date, end_date) { where(dob: start_date..end_date) }
end
