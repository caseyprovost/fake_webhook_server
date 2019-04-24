require 'sinatra'

class App < Sinatra::Base
  post '*' do
    'Hello World!'
    # curl -d "param1=value1&param2=value2" -X POST http://localhost:4567/data
    payload = params
    payload = JSON.parse(request.body.read) unless params[:path]
    logger.info "Received payload: #{payload}"
    status 200
    body 'success'
  end
end
