
require "rubygems"
require "sinatra"
require "sequel"


begin
	# connect to the MySQL server
     #dbh = Mysql.real_connect("localhost", "user", "user123", "test")
     DB = Sequel.connect(:adapter=>'mysql', :host=>'localhost', :database=>'test', :user=>'user', :password=>'user123')
   #DB=Sequel.connect("jdbc:mysql://localhost/test?user=user&password=user123")

	#  create an student table
      DB.create_table :student1 do
      primary_key :id
      String :name
      Float :marks
      end

	 # create a dataset from the items table
student = DB[:student1]

# populate the table
student.insert(:name => 'abc', :marks => rand * 100)
student.insert(:name => 'def', :marks => rand * 100)
student.insert(:name => 'ghi', :marks => rand * 100)

# print out the number of records
puts "Item count: #{student.count}"


get '/student/:id1' do
@p=params[:id1]
st=student.where(:id.like(@p))
"marks = #{st.get(:marks)}"

end
end

