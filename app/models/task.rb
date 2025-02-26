class Task < ApplicationRecord
  belongs_to :task_list
  belongs_to :project
  has_many :assignments, dependent: :destroy
  has_many :users, through: :assignments
  has many :comments, dependent: :destroy
end
