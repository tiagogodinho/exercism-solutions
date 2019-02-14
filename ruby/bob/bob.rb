class Bob
  attr_reader :message

  def self.hey(message)
    new(message).hey
  end

  def initialize(message)
    @message = message
  end

  def hey
    if yelling? && questioning?
      "Calm down, I know what I'm doing!"
    elsif yelling?
      "Whoa, chill out!"
    elsif questioning?
      "Sure."
    elsif silence?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end

  private

  def yelling?
    has_letters? && all_uppercase?
  end

  def questioning?
    message.strip.end_with?("?")
  end

  def silence?
    message.strip.empty?
  end

  def has_letters?
    message =~ /[A-Z]/
  end

  def all_uppercase?
    message.upcase == message
  end
end
