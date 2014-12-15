class Mutant < ActiveRecord::Base
  belongs_to :team
  validates :name, presence: true,
                   length: { minimum: 3 }

  validates :superpower, presence: true,
                         length: { minimum: 3 }

  validates :cv, presence: true,
                 length: { minimum: 3 }
end
