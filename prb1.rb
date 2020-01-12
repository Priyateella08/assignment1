class Calculator
attr_accessor :x, :y
	def initialize(x,y)
		@x=x
		@y=y
	end
	def add
		puts @x+@y
	end
	def sub
		puts @x-@y
	end
	def mul
		puts @x*@y
	end
	def div
		if(@y==0)
		puts "denominator is zero,give another value"
		else
		puts @x/@y
		end
	end
	def mod
		puts @x.modulo(@y)
	end	
end
puts "enter the values"
a=gets.chomp.to_i
b=gets.chomp.to_i
c=Calculator.new(a,b)
puts "enter , 1.addition, 2.subtraction, 3.multiply, 4.divide ,	5.modulo,6.exit"
begin
puts "enter ur choice"
ch=gets.chomp.to_i
case(ch)
	when 1
		c.add
	when 2
		c.sub
	when 3
		c.mul
	when 4
		c.div
	when 5
		c.mod
	when 6
		puts "exit"
end
end while (ch!=6)
