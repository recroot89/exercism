# frozen_string_literal: true

# Write your code for the 'Beer Song' exercise in this file. Make the tests in
# `beer_song_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/beer-song` directory.

class BeerSong
  def self.recite(bottles_amount, lines_count)
    end_text = <<~TEXT
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
    TEXT
    return end_text if bottles_amount.zero?

    text_lines = (1..bottles_amount).to_a.reverse.map do |bottle|
      bottle_count = bottle.zero? ? 'no more' : bottle
      next_bottle_count = (bottle - 1).zero? ? 'no more' : bottle - 1
      bottle_ending = bottle == 1 ? 'bottle' : 'bottles'
      next_bottle_ending = bottle - 1 == 1 ? 'bottle' : 'bottles'
      <<~TEXT
        #{bottle_count} #{bottle_ending} of beer on the wall, #{bottle_count} #{bottle_ending} of beer.
        Take #{bottle_count == 1 ? 'it' : 'one'} down and pass it around, #{next_bottle_count} #{next_bottle_ending} of beer on the wall.
      TEXT
    end << end_text
    text_lines.take(lines_count).join("\n")
  end
end
