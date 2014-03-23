class Ticket < ActiveRecord::Base
  TICKET_CATEGORIES = %i(information development bug)
  TICKET_LEVELS = %i(low medium high)
  TICKET_STATUS = %i(opened in_treatment closed cancelled rejected need_more_informations delayed)

# Ticket model associations:
  belongs_to :user, :inverse_of => :tickets
  belongs_to :assistant, class_name: "User", :inverse_of => :tickets#, foreign_key: "assistant_id"

#  Ticket model validations:
validates :title, :category, :status, :user, presence: true
end
