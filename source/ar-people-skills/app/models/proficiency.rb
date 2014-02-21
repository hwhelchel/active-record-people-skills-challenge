class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill

  after_initialize :init

  def init
    self.level ||= 0
    self.save
  end
end
