class Burpy < ApplicationRecord
  # belongs_to :user

  belongs_to :mentor, class_name: :User
  belongs_to :student, class_name: :User
end
