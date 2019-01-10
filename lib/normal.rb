# frozen_string_literal: true

class Normal
  attr_reader :days_remaining, :quality

  def initialize(days_remaining, quality)
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    @days_remaining -= 1 # days has to always come before quality == 0

    return if @quality.zero?

    @quality -= 1 if @days_remaining.positive?
    @quality -= 2 if @days_remaining <= 0
  end
end
