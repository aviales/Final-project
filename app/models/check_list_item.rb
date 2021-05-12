class CheckListItem < ApplicationRecord
  belongs_to :check_list, optional: true
  validates :text, presence: true

  
end
