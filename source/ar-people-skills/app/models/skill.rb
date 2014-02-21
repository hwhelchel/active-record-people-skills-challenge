class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :proficiencies
  validates_uniqueness_of :name, scope: :context
  validates :name, :context, presence: true
end
