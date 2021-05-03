class WorkArea < ApplicationRecord
  belongs_to :check_list, optional: true
  validates :name, presence: true

  def to_s
    name
  end
end
