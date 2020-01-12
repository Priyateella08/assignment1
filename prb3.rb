s=[]
puts "1.add email, 2.display ,3.display edu mails, 4.search,5.delete mail by value ,6.display unique domains of mails ,7.count mail ids in given domain ,8.exit"
begin
puts "enter your choice"
ch= gets.chomp.to_i
case(ch)
	when 1
		puts "enter the mail id"
		p=gets.chomp
		s<< p
	when 2
		for i in s
			puts i
		end
	when 3
		results=s.select{|i| i.include?(".edu")}
		puts results
	when 4
		puts "enter the mail id to be searched"
		m=gets.chomp
		if(s.include?(m))
			puts "mail is found"
		else
			puts "mail not found"
		end
	when 5
		puts "enter the mail to be deleted"
		m=gets.chomp
		if(s.include?(m))
		s.delete(m)
		puts "mail deleted"
		else
		puts "mail is not available to delete"
		end
	when 6
		for i in 0..s.size do
			k=s[i].to_s
			a=k.index("@").to_i
			p=k[a+1,k.length]
			puts p
		end
	when 7
		a=Array.new(0)
		for i in s do
			t=i.split("@")
			a.push(t[1])
			c=a.each_with_object(Hash.new(0)) do |i,total|
			total[i]+=1
			end
		end
		puts c		
	when 8
		puts "exit"
			
end
end while(ch!=8)
