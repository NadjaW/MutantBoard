class Mutant < ActiveRecord::Base
  validates :name, presence: true,
                   length: { minimum: 3 }

  validates :superpower, presence: true,
                         length: { minimum: 3 }

  validates :cv, presence: true,
                 length: { minimum: 3 }
end
