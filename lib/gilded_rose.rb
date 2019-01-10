# frozen_string_literal: true

require_relative "item"
require_relative "normal"
require_relative "brie"
require_relative "backstage"
require_relative "conjured"

module GildedRose
  DEFAULT_CLASS = Item
  SPECIALIZED_CLASSES = {
    "Normal Item" => Normal,
    "Aged Brie" => Brie,
    "Backstage passes to a TAFKAL80ETC concert" => Backstage,
    "Conjured Mana Cake" => Conjured
  }
  def self.for(name:, days_remaining:, quality:)
    (SPECIALIZED_CLASSES[name] || DEFAULT_CLASS)
      .new(days_remaining, quality)
  end
end
