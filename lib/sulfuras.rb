# frozen_string_literal: true

class Sulfuras
  attr_reader :days_remaining, :quality
  def initialize(days_remaining, quality)
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick; end
end
