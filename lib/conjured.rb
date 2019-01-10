# frozen_string_literal: true

require_relative "item"

class Conjured < Item
  def tick
    @days_remaining -= 1
    return if @quality.zero?

    @quality -= 2
    @quality -= 2 if @days_remaining <= 0
  end
end
