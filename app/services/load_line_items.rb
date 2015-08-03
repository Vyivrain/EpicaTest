class LoadLineItems

  def initialize(purchase:, line_items:)
    @purchase = purchase
    @line_items = line_items
  end

  def load_line_items
    @line_items.each do |key, value|
      @purchase.line_items.push(LineItem.new(amount: value, user_id: @purchase.user_id)) if value.present?
    end
  end
end
