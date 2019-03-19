class Application < ApplicationRecord
  belongs_to :internship
  belongs_to :user
  has_many :answers
end
