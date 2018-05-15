require 'pry'

class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []
  @@count = 0

  #class methods
  def initialize(species)
    @species = species
    self.class.all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  #instance methods
  def say_species
    "I am a #{@species}."
  end

  def pets
    
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)

  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs] << dog
  end

  def walk_dogs
    @mood = "happy"
  end

  def play_with_cats
    @mood = "happy"
  end

  def feed_fish
    @mood = "happy"
  end

  def sell_pets

  end

  def list_pets
    pets.each do |type, pets|
      puts "I have #{pets.count} fish, #{pets.count} dog(s), and #{pets.count} cat(s)."
    end
  end






end
