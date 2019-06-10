class Answer < ApplicationRecord
  belongs_to :application, dependent: :destroy
  belongs_to :question, dependent: :destroy
end
