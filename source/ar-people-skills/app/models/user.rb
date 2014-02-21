class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies
  validates :name, :email, presence: true
  validates_uniqueness_of :name, scope: :email

  def proficiency_for(skill)
    p Proficiency.where(user: self) 
    Proficiency.where(user: self).find_by(skill: skill).level
  end
end
