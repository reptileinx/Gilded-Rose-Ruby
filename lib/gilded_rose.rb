# frozen_string_literal: true

require_relative "item"
require_relative "normal"
require_relative "brie"
require_relative "backstage"

module GildedRose
  def self.for(name:, days_remaining:, quality:)
    klass_for(name).new(days_remaining, quality)
  end

  def self.klass_for(name)
    case name
    when "Normal Item"
      Normal
    when "Aged Brie"
      Brie
    when "Sulfuras, Hand of Ragnaros"
      Item
    when "Backstage passes to a TAFKAL80ETC concert"
      Backstage
    end
  end
end
