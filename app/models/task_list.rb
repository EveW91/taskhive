class TaskList < ApplicationRecord
  belongs_to :project
  has_many :tasks, dependent: :destroy

  default_scope { order(:position) }
end
