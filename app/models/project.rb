class Project < ApplicationRecord
  belongs_to :user
  has_many :task_lists, dependent: :destroy
  has_many :tasks, dependent: :destroy
end
