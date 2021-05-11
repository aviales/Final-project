class Project < ApplicationRecord
  has_many :inspeccions, dependent: :destroy
   belongs_to :user, :optional => true

  
end
