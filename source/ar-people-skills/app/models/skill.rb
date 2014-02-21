class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :proficiencies
  validates_uniqueness_of :name, scope: :context
  validates :name, :context, presence: true

  def user_with_proficiency(level)
    proficiencies.find_by(level: level).user
  end
end
