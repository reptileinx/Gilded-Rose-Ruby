# frozen_string_literal: true

require_relative "normal"
require_relative "brie"
require_relative "backstage"
require_relative "sulfuras"

class GildedRose
  attr_reader :name, :days_remaining, :quality, :item

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
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
      @item = Normal.new(days_remaining, quality)
      item.tick
    when "Aged Brie"
      @item = Brie.new(days_remaining, quality)
      item.tick
    when "Sulfuras, Hand of Ragnaros"
      @item = Sulfuras.new(days_remaining, quality)
      item.tick
    when "Backstage passes to a TAFKAL80ETC concert"
      @item = Backstage.new(days_remaining, quality)
      item.tick
    end
  end
end
