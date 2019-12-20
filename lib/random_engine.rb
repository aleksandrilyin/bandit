class RandomEngine
  def self.get_random_value num
    rand_num = rand(0..9)
    10.times do |i|
      if i < 9
        print rand_num
        print "\r"
        sleep 0.08
      else
        print num
      end
    end
  end
end
