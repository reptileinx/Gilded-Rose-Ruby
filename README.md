Gilded Rose Kata in Ruby
========================

The Gilded Rose Kata in Ruby following the style from the [Sandi Metz](https://twitter.com/sandimetz)
presentation [All the Little Things](https://www.youtube.com/watch?v=8bZh5LMaSmE).

The objective of this kata is to practice refactoring. This kata motivates the need for refactoring as follows:

* The implementation is spaghetti code, and difficult to glean context.
* The tests of the current implementation pass, but there are a number of pending tests.
* You are asked to implement the code to get the pending tests to pass.
* This isn't easy, because the implementation is so messy.
* Consider using the passing tests to refactor the code to make it more habitable before implementing new functionality.
Also known as a [preparatory refactoring](http://martinfowler.com/articles/workflowsOfRefactoring/#preparatory).

## Where to Start

Begin refactoring the existing `lib/gilded_rose.rb` class.

## Original Requirements

Here are the [requirements](https://github.com/jimweirich/gilded_rose_kata#original-description-of-the-gilded-rose)
as given in the original version of the kata. It may help you to understand the problem domain if you know
that the [Gilded Rose](http://wowwiki.wikia.com/wiki/Gilded_Rose) is an inn from the World of Warcraft.


## Flog check

0ab533b97461b7eacc9adc1ad373ad267e3582f7
```bash
flog lib/gilded_rose.rb
    56.8: flog total
    14.2: flog/method average

    47.9: GildedRose#tick                  lib/gilded_rose.rb:19-50
```

428cf95d772fe648ba801fdb663b641b23740589
```bash
flog lib/gilded_rose.rb
   85.8: flog total
   14.3: flog/method average

   52.2: GildedRose#tick                  lib/gilded_rose.rb:42-82
```

78c49e9b61253fa8354890ca483570bd177dc74c
```bash
flog lib/gilded_rose.rb
    41.6: flog total
     6.9: flog/method average

    12.3: GildedRose#backstage_tick        lib/gilded_rose.rb:32-39
     9.0: GildedRose#brie_tick             lib/gilded_rose.rb:21-28
     8.4: GildedRose#normal_tick           lib/gilded_rose.rb:12-18
```

f1ec97bf5aa19bf0b2415ddaed15819c0fdf418a
```bash
flog lib
    62.7: flog total
     5.2: flog/method average

    13.5: GildedRose#backstage_tick        lib/gilded_rose.rb:30-37
     9.8: GildedRose#brie_tick             lib/gilded_rose.rb:19-26
     8.6: GildedRose#tick                  lib/gilded_rose.rb:52-61
     8.4: Normal#tick                      lib/normal.rb:11-17
```

## Problems
- hard to think about
- different levels of abstractions

> Duplication is far cheaper than the wrong abstraction
