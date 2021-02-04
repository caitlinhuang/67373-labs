class Task < ApplicationRecord
    #please fill this out before you proceed to step 3 on part 3!
    #you are on step 2 :). Fill out the Task class
    has_many :chores
    has_many :children, through: :chores

    validates_presence_of :name
    validates_numericality_of :points, only_integer: true, greater_than_or_equal_to: 0

    scope :alphabetical, -> { order(:name) }
    scope :active, -> { where(active: true) }
end
