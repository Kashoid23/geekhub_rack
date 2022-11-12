# frozen_string_literal: true

class Pet
  attr_reader :name, :mood

  def initialize(name)
    @name = name
    @mood = 10
  end

  def info
    "#{name} wants hugs!"
  end

  def hug
    @mood += rand(20)
  end

  def current_mood
    case mood
    when 10..20
      "I'm in a good mood!"
    when 21..40
      'I feel fantastic!'
    else
      'I will share the mood for cookies!'
    end
  end
end
