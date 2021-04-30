class CheckListItem < ApplicationRecord
  belongs_to :check_lists, :optional => true
end
