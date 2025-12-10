class Project < ApplicationRecord
  has_many :todos, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, presence: {message: "Did you forget to add a name? "}
end
