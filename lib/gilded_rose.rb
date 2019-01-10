# frozen_string_literal: true

class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def normal_tick
    @days_remaining -= 1 # days has to always come before quality == 0

    return if @quality == 0

    @quality -= 1 if @days_remaining > 0
    @quality -= 2 if @days_remaining <= 0
  end

  def brie_tick
    @days_remaining -= 1

    return if @quality >= 50

    @quality += 1
    @quality += 1 if @days_remaining <= 0 && @quality < 50
  end

  def tick
    return normal_tick if name == "Normal Item"
    return brie_tick if name == "Aged Brie"

    if (@name != "Aged Brie") && (@name != "Backstage passes to a TAFKAL80ETC concert")
      if @quality > 0
        @quality -= 1 if @name != "Sulfuras, Hand of Ragnaros"
      end
    else
      if @quality < 50
        @quality += 1
        if @name == "Backstage passes to a TAFKAL80ETC concert"
          if @days_remaining < 11
            @quality += 1 if @quality < 50
          end
          if @days_remaining < 6
            @quality += 1 if @quality < 50
          end
        end
      end
    end
    @days_remaining -= 1 if @name != "Sulfuras, Hand of Ragnaros"
    if @days_remaining < 0
      if @name != "Aged Brie"
        if @name != "Backstage passes to a TAFKAL80ETC concert"
          if @quality > 0
            @quality -= 1 if @name != "Sulfuras, Hand of Ragnaros"
          end
        else
          @quality -= @quality
        end
      else
        @quality += 1 if @quality < 50
      end
    end
  end
end
