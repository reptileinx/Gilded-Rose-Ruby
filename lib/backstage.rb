# frozen_string_literal: true

require_relative "item"

class Backstage < Item
  def tick
    @days_remaining -= 1
    return @quality = 0 if @days_remaining.negative?
    return if @quality >= 50

    @quality += 1
    @quality += 1 if @days_remaining < 10
    @quality += 1 if @days_remaining < 5
  end
end
