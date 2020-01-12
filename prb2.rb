a=[]
puts "1.addvalue ,2.min, 3.max ,4.sum,5.average,6.search,7.display,8.delete value by index ,9.delete value by text,10.exit"
begin
puts "enter choice"
ch=gets.chomp.to_i
case (ch)
	when 1
		puts "enter the value to be inserted in array"
		p=gets.chomp.to_i
		a.push(p)
	when 2	
		puts "minimum element is"+(a.min).to_s
	when 3
		puts "maximum element is"+(a.max).to_s
	when 4
		puts "sum of elements is"+(a.sum).to_s
	when 5
		puts "average is"+(a.sum/a.size).to_s
	when 6
		puts "enter the element to search"
		p=gets.chomp.to_i
		for i in 0..a.size do
			if a[i]==p
			puts "element is found"
			end
		end
	when 7
		for i in a do
			puts i
		end
	when 8
		puts "enter the index of element to be deleted"
		k=gets.chomp.to_i
		a.delete_at(k)
		puts "element deleted"
	when 9
		puts "enter the element to be deleted"
		p=gets.chomp.to_i
		a.delete(p)
		puts "element deleted"
	when 10
		puts exit
end
end while(ch!=10)
			
