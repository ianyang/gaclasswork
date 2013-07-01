require 'sinatra'
require 'sinatra/reloader'

get '/multiply/:x/:y' do
  answer = params[:x].to_i * params[:y].to_i
  answer.to_s
end

get '/add/:x/:y' do
  answer = params[:x].to_i + params[:y].to_i
  answer.to_s
end

get '/minus/:x/:y' do
  answer = params[:x].to_i - params[:y].to_i
  answer.to_s
end

get '/divide/:x/:y' do
  answer = params[:x].to_f / params[:y].to_f
  answer.to_s
end
