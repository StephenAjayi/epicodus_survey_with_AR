require("sinatra")
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('pg')
require('./lib/survey')

get('/') do
  erb(:index)
end

get('/surveys') do
  @surveys = Survey.all()
  erb(:surveys)
end

post('/surveys') do
  name = params.fetch("name")
  survey = Survey.new({:name => name})
  survey.save()
  @surveys = Survey.all()
  erb(:surveys)
end

get('/surveys/:id') do
  @survey = Survey.find(params.fetch('id').to_i())
  erb(:survey)
end
