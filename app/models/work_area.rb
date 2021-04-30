class WorkArea < ApplicationRecord
  belongs_to :check_lists, :optional => true
end
