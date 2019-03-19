class Question < ApplicationRecord
  belongs_to :internship, dependent: :destroy
end
