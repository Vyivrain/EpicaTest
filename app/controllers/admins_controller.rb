class AdminsController < ApplicationController

  def index
    @users = User.all
    @purchases = Purchase.all
    @users_with_negative = @users.includes(:line_items).where('line_items.created_at > ? AND line_items.amount < ?', Time.at(1.year.ago).utc, 0).references(:line_items)
    @users_with_negative_greater = @users.includes(:line_items).map { |user| user if (user.line_items.where('amount < 0').count.to_f / user.line_items.count) > 0.3 }.compact
    @combine_users = @users_with_negative - @users_with_negative_greater
  end
end
