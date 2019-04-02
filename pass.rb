

# standart pass
def hrdpas(x)
  mas = ['a'..'z', 'A'..'Z', '0'..'9'].map(&:to_a).flatten
  (0..x).map { mas.sample }.join
end
i = 6
puts "Easy pass = #{hrdpas(i)}"

# easyread pass
class ERpass
  def initialize(length)
    v = %w[A E I O U]
    c = %w[B C D F G H J K L M N P Q R S T V W X Y Z]
    symb = %w[! @ # $ % ^ & *]
    num = rand(9)

    pass = []
    i = 1
    while i < length + 1
      pass << case i
              when 1
                num
              when length
                symb.sample
              else if i.even?
                     rand(2) == 1 ? v.sample : v.sample.downcase
                   else
                     rand(2) == 1 ? c.sample : c.sample.downcase
                   end
              end
      i += 1
    end
    print "your pass: #{pass.join}"
  end
end

p 'Enter the number of characters for the password: '
x = gets.to_i

ERpass.new(x)

