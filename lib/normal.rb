# frozen_string_literal: true

require_relative "item"

class Normal < Item
  def tick
    @days_remaining -= 1 # days has to always come before quality == 0

    return if @quality.zero?

    @quality -= 1 if @days_remaining.positive?
    @quality -= 2 if @days_remaining <= 0
  end
end
