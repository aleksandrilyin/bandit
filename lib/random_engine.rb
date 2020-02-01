class RandomEngine
  def self.get_random_value(num)
    10.times do |i|
      if i < 9
        print rand(10)
        print "\r"
        sleep 0.08
      else
        print num
      end
    end
  end
end
