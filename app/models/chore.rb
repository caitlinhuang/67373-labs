class Chore < ApplicationRecord
    belongs_to :child
    belongs_to :task

    validates_date :due_on

    scope :chronological, -> {order('due_on')}
    scope :by_task, -> {joins(:task).order('tasks.name')}
    scope :pending, -> {where('completed = ?', false)}
    scope :done, -> {where('completed = ?', true)}
    scope :past, -> {where('due_on < ?', Date.today)}
    scope :upcoming, -> {where('due_on >= ?', Date.today)}

    def status
        if self.completed
            "Completed"
        else
            "Pending"
        end
    end
end
