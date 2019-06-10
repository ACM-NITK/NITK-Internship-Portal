class Company < ApplicationRecord
  has_many :internships, dependent: :destroy
  belongs_to :user
end
