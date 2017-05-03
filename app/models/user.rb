class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :com
  has_one :jobseeker_resume
  # has_many :jobs, through: :com
  # has_many :participated_jobs, :through => :com, :source => :jobs
  has_many :jobs

end
