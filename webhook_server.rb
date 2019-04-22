require 'sinatra'

post '*' do
  'Hello World!'
  # curl -d "param1=value1&param2=value2" -X POST http://localhost:4567/data
  status 200
  body 'success'
end
