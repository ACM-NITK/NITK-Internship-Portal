class User < ApplicationRecord
  has_many :companies, dependent: :destroy
  has_many :applications, dependent: :destroy
  has_one :student_table, dependent: :destroy
  before_create :build_student_table

  enum role: [ :admin, :manager, :student]

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :student
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
