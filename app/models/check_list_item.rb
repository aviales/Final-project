class CheckListItem < ApplicationRecord
  belongs_to :check_lists, :optional => true
  validates :text, presence: true

  def to_s
    text
  end
end
