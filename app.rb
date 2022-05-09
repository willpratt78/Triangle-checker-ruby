require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
require('pry')
also_reload('lib/**/*.rb')

get('/index') do
  erb(:index)
end

post('/output') do
  side1 = params[:side1]
  side2 = params[:side2]
  side3 = params[:side3]
  @triangles = Triangle.new(side1, side2, side3)
  erb(:output)
end