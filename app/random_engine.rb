class RandomEngine
  attr_reader :n

  def initialize
    @n = n
  end

  def self.get_random_value n
    number = rand(0..9)
    10.times do |i|
      if i < 9
        print number
        print "\r"
        sleep 0.08
      else
        print n
      end
    end
  end
end
