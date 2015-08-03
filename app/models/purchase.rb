class Purchase < ActiveRecord::Base
  has_many :line_items
  belongs_to :user

  # validates :name, presence: true
  # validates :user_id, presence: true
  #
  # def validate(record)
  #   if record.line_items.count < 1 and record.line_items.first.empty?
  #     record.errors[:line_item] << 'Need to contain at least one line item'
  #   end
  # end
end
