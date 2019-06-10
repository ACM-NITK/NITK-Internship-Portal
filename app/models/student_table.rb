class StudentTable < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_one_attached :resume
end
