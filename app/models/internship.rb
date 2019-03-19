class Internship < ApplicationRecord
  belongs_to :company
  has_many :applications, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
end
