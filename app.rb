# encoding: UTF-8

require 'sinatra'
require 'sinatra/partial'
    
get "/" do
  haml :form
end

post "/" do
  haml :form, locals: {output: params.inspect}
end

get "/ajax" do
  haml :ajaxform
end

post "/ajax" do
  haml :ajaxform
end

before do
  puts "path: #{request.path_info}"
  puts "request.xhr? #{request.xhr?}"
  puts "params: #{params.inspect}"
end