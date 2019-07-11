class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true
    #this determines which messages are displayed
    scope :custom_display, -> { order(:created_at).last(20) }
end
