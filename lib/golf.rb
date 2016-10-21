class Golf
	def self.hole1(a)
    a.inject 1,&:*
  end
  def self.hole2
    (97..122).map &:chr
  end
  def self.hole3(a)
    (1..a).inject 1,&:*
  end
  def self.hole4(a)
    a.map do |b|
      case b[0..2]
      when "man"
        "hat(#{b})"
      when "dog"
        "#{b[0..-2]}(bone))"
      else
        "dead(#{b[4..-2]})"
      end
    end
  end
  def self.hole5(a)
    (1..a.length).flat_map{|i|a.each_cons(i).to_a}
  end
  def self.hole6(a)
    (1..a).map do |i|
      case i
      when i%3==0
        "fizz"
      when i%5==0
        "buzz"
      when i%15==0
        "fizzbuzz"
      else
        i
      end
    end
  end
end