

=begin
По-хорошему, описание классов и методов складируются в отдельные файлы,
а исполняемая логика находится в "Главном файле"
=end


# standart pass
def hardpass(x)
  mas = ['a'..'z', 'A'..'Z', '0'..'9'].map(&:to_a).flatten
  (0..x).map { mas.sample }.join
end
i = 6
puts "Easy pass = #{hardpass(i)}" #метод

# easyread pass
class Hpass
  def initialize(length)
    glasnie = %w[A E I O U]
    soglasnie = %w[B C D F G H J K L M N P Q R S T V W X Y Z]
    symb = %w[! @ # $ % ^ & *]
    num = rand(100)
    pas2 = []
    i = 1
    while i < length

      if i == 1
        pas2 << num
      elsif i == length - 1
        pas2 << symb.sample
      elsif i != 0
        pas2 << if rand(2) == 1
                  soglasnie.sample
                else
                  soglasnie.sample.downcase
                end
        pas2 << if rand(2) == 1
                  glasnie.sample
                else
                  glasnie.sample.downcase
                end
      end
      i += 1
    end
    print "your pass: #{pas2.join}"
  end
end

p 'Enter the number of characters for the password: '
x = gets.to_i

a = Hpass.new(x) #объект класса

p a.to_s
