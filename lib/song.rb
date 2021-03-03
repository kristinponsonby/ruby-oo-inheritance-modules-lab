require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@song = []

  def initialize
    @@song << self
  end

  def self.all
    @@song
  end

  def artist=(artist)
    @artist = artist
  end
end
