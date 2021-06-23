#!/usr/bin/env ruby

attr_reader :name
    attr_reader :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def compare_age(other)
      "#{other.name} is #{["the same age as", "younger than", "older than"][self.age <=> other.age]} me."
    end
  end