# To change this template, choose Tools | Templates
# and open the template in the editor.

class Student
attr_accessor :name, :marks, :grade
def initialize(name, grade, marks)
   @name = name
   @grade = grade
   @marks = marks
 end
end
arr= Array.new
#for i in 0..5 do
 #   s=Student.new
  #  arr.push s
#end

s0 = Student.new("abc","a",50)
 s1 = Student.new("pqr","b",30)
 s2 = Student.new("xyz","d",20)
 s3 = Student.new("jmj","c",30)
 s4 = Student.new("lmn","e",10)
 
arr = Array.[](s0,s1,s2,s3,s4)

print "before sorting"
print "\n"
print "Name\tMarks\tGrade\n"
for i in 0..4 do
  print "#{arr[i].name}\t#{arr[i].marks}\t#{arr[i].grade}"
  print "\n"
end

puts "1.Sort by name 2.Sort by marks 3.Sort by grade \n Enter Choice: "
choice = gets.chomp
print choice

case choice
 when "1"
 arr.sort! { |a,b| a.name.downcase <=> b.name.downcase }
 when "2"
 arr.sort! { |a, b|  a.marks <=> b.marks }
when "3"
arr.sort! { |a, b|  a.grade <=> b.grade }

end


print "after sorting"
print "\n"
print "Name\tMarks\tGrade\n"
for i in 0..4 do
  print "#{arr[i].name}\t#{arr[i].marks}\t#{arr[i].grade}"
  print "\n"
end

