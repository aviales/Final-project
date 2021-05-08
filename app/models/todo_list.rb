class TodoList < ApplicationRecord
  belongs_to :check_list
	has_many :todo_items, dependent: :destroy
end
