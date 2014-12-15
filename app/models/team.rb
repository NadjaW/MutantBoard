class Team < ActiveRecord::Base
  has_many :mutants
  validates :name, presence: true,
                   length: { minimum: 3 }
  validates :task, presence: true,
                   length: { minimum: 3 }
end
