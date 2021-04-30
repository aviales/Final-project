class Project < ApplicationRecord
 
  has_many :inspeccions
   belongs_to :user, :optional => true
end
