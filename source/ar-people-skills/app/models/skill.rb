class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through :proficiencies
end
