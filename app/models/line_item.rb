class LineItem < ActiveRecord::Base
  belongs_to :purchase, dependent: :destroy
  belongs_to :user
end
