# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that displays
# an address

get '/contact' do
  '1111 Wicker Park Rd, Chicago, IL 60622'
end

# write a GET route that takes name as query param
# and returns "Good job, name!"
# if query param is not present, route simply says "Good job!"

get '/great_job' do
  "Good job #{params[:name]}!"
end

# write a route that uses route parameters
# to add 2 num and respond w/ the result

get '/:first/sum/:second' do
  num1 = params[:first].split("=")
  num2 = params[:second].split("=")
  sum = num1[1].to_i + num2[1].to_i
  "#{num1[1]} + #{num2[1]} = #{sum}"
end
