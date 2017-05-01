class Com < ApplicationRecord
  belongs_to :user
  # has_many   :jobs

  validates :com_type, presence: true
end
