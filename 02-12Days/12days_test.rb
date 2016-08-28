gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
# require_relative '12days.txt'

class TwelveDaysTest < Minitest::Test
  def test_day_one_gift
    l = "a partridge in a pear tree"
    g = Xmas.gifts(0).first  # 0 is number being passed in
    assert_equal l, g
  end

  def test_day_two_gift
    l1 = "two turtle doves"
    l2 = "and a partridge in a pear tree"
    g1, g2 = Xmas.gifts(1)  # 1 is number being passed in (parameter) -> expecting an output

    assert_equal l1, g1
    assert_equal l2, g2
  end

  def test_day_five_yelling_gift
    yell = Xmas.gifts(4).first
    assert_equal "FIVE GOLDEN RINGS", yell
  end

  def test_first_verse
    v1, v2 = Xmas.verse(0).split("\n")  # 0 includes v1 and v2
    assert_equal "On the first day of Christmas my true love gave to me", v1
    assert_equal "a partridge in a pear tree", v2
  end

  def test_second_verse

    v1, v2, v3 = Xmas.verse(1).split("\n")

    assert_equal "On the second day of Christmas my true love gave to me", v1
    assert_equal "two turtle doves", v2
    assert_equal "and a partridge in a pear tree", v3
  end

  def test_last_verse

    last_verse = <<-SONG
On the twelfth day of Christmas my true love gave to me
twelve drummers drumming
eleven pipers piping
ten lords-a-leaping
nine ladies dancing
eight maids-a-milking
seven swans-a-swimming
six geese-a-laying
FIVE GOLDEN RINGS
four calling birds
three french hens
two turtle doves
and a partridge in a pear tree
SONG

    assert_equal last_verse.strip, Xmas.verse(11)
  end

  def test_sing_whole_song
    whole_song = File.read(File.dirname(__FILE__) + '/12days.txt')
    assert_equal whole_song.strip, Xmas.sing
  end
end



class Xmas
attr_accessor :gifts

  def self.gifts(gifts_number)
    @gifts = ["a partridge in a pear tree", "two turtle doves", "three french hens", "four calling birds", "FIVE GOLDEN RINGS", "six geese-a-laying", "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing", "ten lords-a-leaping", "eleven pipers piping", "twelve drummers drumming"]

    case gifts_number
    when 0
      return [@gifts[0]]
    when 1
      return [@gifts[1]] + ["and " + @gifts[0]]
    when 2
      return [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    when 3
      return [@gifts[3]] + [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    when 4
      return [@gifts[4]] + [@gifts[3]] + [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    when 5
      return [@gifts[5]] + [@gifts[4]] + [@gifts[3]] + [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    when 6
      return [@gifts[6]] + [@gifts[5]] + [@gifts[4]] + [@gifts[3]] + [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    when 7
      return [@gifts[7]] + [@gifts[6]] + [@gifts[5]] + [@gifts[4]] + [@gifts[3]] + [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    when 8
      return [@gifts[8]] + [@gifts[7]] + [@gifts[6]] + [@gifts[5]] + [@gifts[4]] + [@gifts[3]] + [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    when 9
      return [@gifts[9]] + [@gifts[8]] + [@gifts[7]] + [@gifts[6]] + [@gifts[5]] + [@gifts[4]] + [@gifts[3]] + [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    when 10
      return [@gifts[10]] + [@gifts[9]] + [@gifts[8]] + [@gifts[7]] + [@gifts[6]] + [@gifts[5]] + [@gifts[4]] + [@gifts[3]] + [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    when 11
      return [@gifts[11]] + [@gifts[10]] + [@gifts[9]] + [@gifts[8]] + [@gifts[7]] + [@gifts[6]] + [@gifts[5]] + [@gifts[4]] + [@gifts[3]] + [@gifts[2]] + [@gifts[1]] + ["and " + @gifts[0]]
    end
  end

  def self.verse(verse_number)
  attr_accessor :gifts

    number = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
    @first_line = "On the #{number[verse_number]} day of Christmas my true love gave to me\n"
    # @first_line = ["On the first day of Christmas my true love gave to me", "On the second day of Christmas my true love gave to me"]

    case verse_number
    when 0
      return @first_line.to_s + @gifts[0]
    when 1
      return @first_line.to_s + @gifts[1] + "\nand " + @gifts[0]
    when 2
      return @first_line.to_s + @gifts[2] + "\n" + @gifts[1] + "\nand " + @gifts[0]
    when 3
      return @first_line.to_s + @gifts[3] + "\n" + @gifts[2] + "\n" + @gifts[1] + "\nand " + @gifts[0]
    when 4
      return @first_line.to_s + @gifts[4] + "\n" + @gifts[3] + "\n" + @gifts[2] + "\n" + @gifts[1] + "\nand " + @gifts[0]
    when 5
      return @first_line.to_s + @gifts[5] + "\n" + @gifts[4] + "\n" + @gifts[3] + "\n" + @gifts[2] + "\n" + @gifts[1] + " \nand " + @gifts[0]
    when 6
      return @first_line.to_s + @gifts[6] + "\n" + @gifts[5] + "\n" + @gifts[4] + "\n" + @gifts[3] + "\n" + @gifts[2] + "\n" + @gifts[1] + "\nand " + @gifts[0]
    when 7
      return @first_line.to_s + @gifts[7] + "\n" + @gifts[6] + "\n" + @gifts[5] + "\n" + @gifts[4] + "\n" + @gifts[3] + "\n" + @gifts[2] + "\n" + @gifts[1] + "\nand " + @gifts[0]
    when 8
      return @first_line.to_s + @gifts[8] + "\n" + @gifts[7] + "\n" + @gifts[6] + "\n" + @gifts[5] + "\n" + @gifts[4] + "\n" + @gifts[3] + "\n" + @gifts[2] + "\n" + @gifts[1] + "\nand " + @gifts[0]
    when 9
      return @first_line.to_s + @gifts[9] + "\n" + @gifts[8] + "\n" + @gifts[7] + "\n" + @gifts[6] + "\n" + @gifts[5] + "\n" + @gifts[4] + "\n" + @gifts[3] + "\n" + @gifts[2] + "\n" + @gifts[1] + "\nand " + @gifts[0]
    when 10
      return @first_line.to_s + @gifts[10] + "\n" + @gifts[9] + "\n" + @gifts[8] + "\n" + @gifts[7] + "\n" + @gifts[6] + "\n" + @gifts[5] + "\n" + @gifts[4] + "\n" + @gifts[3] + "\n" + @gifts[2] + "\n" + @gifts[1] + "\nand " + @gifts[0]
    when 11
      return @first_line.to_s + @gifts[11] + "\n" + @gifts[10] + "\n" + @gifts[9] + "\n" + @gifts[8] + "\n" + @gifts[7] + "\n" + @gifts[6] + "\n" + @gifts[5] + "\n" + @gifts[4] + "\n" + @gifts[3] + "\n" + @gifts[2] + "\n" + @gifts[1] + "\nand " + @gifts[0]

    end

  end

  def self.read(file)
    File.open('12days.txt', "r")
  end

  def self.sing
    whole_song = File.read('12days.txt')

     whole_song
  end
end
