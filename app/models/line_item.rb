class LineItem < ActiveRecord::Base
  belongs_to :purchase, dependent: :destroy
  belongs_to :user

  # validates :amount, presence: true
  # validates :purchase_id, presence: true
  # validates :user_id, presence: true
end
