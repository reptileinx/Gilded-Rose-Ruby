# frozen_string_literal: true

class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def normal_tick
    if @quality != 0
      @quality -= 1 if @days_remaining > 0
      @quality -= 2 if @days_remaining <= 0
    end

    @days_remaining -= 1
  end

  def tick
    return normal_tick if name == "Normal Item"

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
