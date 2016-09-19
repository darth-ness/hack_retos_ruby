class Order < ApplicationRecord
  before_save :normalize_card_number, if: :paid_with_card?

  private
  def normalize_card_number
    #
    #
    #
  end

  def paid_with_card?
    #true
    #false
  end
end
