class Student
attr_accessor :name ,:rnum ,:state ,:branch ,:cgpa
	def initialize(rnum=0,name=nil,state=nil,branch=nil,cgpa=0.0)
		@rnum=rnum
		@name=name
		@state=state
		@branch=branch
		@cgpa=cgpa
	end
	def display
		puts "name : #{@name}"
		puts "rollno : #{@rnum}"
		puts "state : #{@state}"
		puts "branch : #{@branch}"
		puts "cgpa : #{@cgpa}"
	end
end
puts "1.Add Student"
puts "2.Display all Students"
puts "3.Display Students by Branch"
puts "4.Display Students by state"
puts "5.Search Student by RollNo"
puts "6.Search by part of Name"
puts "7.Delete by RollNo"
puts "8.Count and display number of students by state"
puts "9.Count and display number of students by branch"
puts "10.Exit"
s=Array.new
begin
puts "Enter your choice"
ch=gets.chomp.to_i
case ch
	when 1
                puts "Enter Student Details:"
                puts "Enter RollNo:"
                rollno=gets.chomp.to_i
                puts "Enter Name:"
                name=gets.chomp
                puts "Enter State:"
                state=gets.chomp
                puts "Enter Branch:"
                branch=gets.chomp
                puts "Enter CGPA:"
                cgpa=gets.chomp.to_i
                x=Student.new(rollno,name,state,branch,cgpa)
                s.push(x)
                puts "Student details added successfully"
        when 2
                sno=1
                for i in s
		        puts "Student "+sno.to_s
		        i.display
		        sno=sno+1
                end
	when 3
                puts "Enter Branch:"
                b=gets.chomp
                c=Array.new
                for i in s
                        if(i.branch==b)
                                        c.push(i)
                        end
                end
                if(!c.empty?)
                sno=1
                for i in c
                        puts "Student "+sno.to_s
                        i.display
                        sno=sno+1
                end
                else
                puts "Branch not found"
                end
        when 4
                puts "Enter State:"
                b=gets.chomp
                c=Array.new
                sno=1
                for i in s
                        if(i.state==b)
                       	 c.push(i)
                        end
                end
                if(!c.empty?)
                for i in c
                        puts "Student "+sno.to_s
                        i.display
                        sno=sno+1
                end
                else
                puts "State not found"
                end
        when 5
                puts "Enter Rollno:"
                b=gets.chomp.to_i
                c=Array.new
                sno=1
                for i in s
                        if(i.rnum==b)
                       	 c.push(i)
                        end
                end
                if(!c.empty?)
                for i in c
		        puts "Student "+sno.to_s
		        i.display
		        sno=sno+1
                end
                else
                puts "Roll Number not found"
                end
        when 6
                puts "Enter Part of name:"
                b=gets.chomp
                c=Array.new
                sno=1
                for i in s
                        if(i.name.include?(b))
                     	   c.push(i)
                        end
                end
                if(!c.empty?)
                for i in c
                        puts "Student "+sno.to_s
                        i.display
                        sno=sno+1
                end
                else
                puts "Name not found"
                end
       when 7
                puts "Enter Rollno:"
                b=gets.chomp.to_i
                c=Array.new
                for i in s
                        if(i.rnum==b)
                      	  c.push(i)
                        end
                end
                if(!c.empty?)
                for i in c
                        s.delete(i)
                end
                puts "Deletion Successful"
                else
                puts "Roll Number not found"
                end       
	when 8
                c=Array.new(0)
                for i in s                               
                        c.push(i.state)
                        count = c.each_with_object(Hash.new(0)) do |e, total|
                        total[e] += 1
                        end       
                end
                puts count          
        when 9
                c=Array.new(0)
                for i in s                               
                        c.push(i.branch)
                        count = c.each_with_object(Hash.new(0)) do |e, total|
                        total[e] += 1                      
                end
                end
                puts count
	when 10
                puts "End of Operations"             
	else
                puts "Invalid Choice"
	end
end while ch!=10
	
	
	

	
