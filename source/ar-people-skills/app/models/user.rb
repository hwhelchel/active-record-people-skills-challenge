class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies
  validates :name, :email, presence: true
  validates_uniqueness_of :name, scope: :email

  def proficiency_for(skill)
    proficiencies.find_by(skill: skill).level
  end

  def set_proficiency_for(skill, rank)
    skill = proficiencies.find_by(skill: skill)
    skill.update(level: rank)
  end
end
