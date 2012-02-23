# encoding: UTF-8

require 'sinatra'

get "/" do
  output = "HOME"
end

post "/" do
  output = params.inspect
end