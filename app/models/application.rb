class Application < ApplicationRecord
  belongs_to :internship
  belongs_to :user, dependent: :destroy
  has_many :answers, dependent: :destroy
  enum status: [ :Applied, :Accepted, :Rejected]

  after_initialize :set_default_status, :if => :new_record?

  def set_default_status
    self.status ||= :Applied
  end
end
