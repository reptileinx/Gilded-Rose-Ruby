# frozen_string_literal: true

require_relative "normal"

class GildedRose
  attr_reader :name, :days_remaining, :quality, :item

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def normal_tick
    @item = Normal.new(days_remaining, quality)
    item.tick
  end

  def brie_tick
    @days_remaining -= 1

    return if @quality >= 50

    @quality += 1
    @quality += 1 if @days_remaining <= 0 && @quality < 50
  end

  def sulfuras_tick; end

  def backstage_tick
    @days_remaining -= 1
    return @quality = 0 if @days_remaining < 0
    return if @quality >= 50

    @quality += 1
    @quality += 1 if @days_remaining < 10
    @quality += 1 if @days_remaining < 5
  end

  def quality
    return item.quality if item

    @quality
  end

  def days_remaining
    return item.days_remaining if item

    @days_remaining
  end

  def tick
    case name
    when "Normal Item"
      normal_tick
    when "Aged Brie"
      brie_tick
    when "Sulfuras, Hand of Ragnaros"
      sulfuras_tick
    when "Backstage passes to a TAFKAL80ETC concert"
      backstage_tick
    end
  end
end

class Normal
end
