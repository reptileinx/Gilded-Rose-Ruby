# frozen_string_literal: true

class Backstage
  attr_reader :days_remaining, :quality

  def initialize(days_remaining, quality)
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    @days_remaining -= 1
    return @quality = 0 if @days_remaining.negative?
    return if @quality >= 50

    @quality += 1
    @quality += 1 if @days_remaining < 10
    @quality += 1 if @days_remaining < 5
  end
end
