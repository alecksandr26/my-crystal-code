# crystal build http_server.cr -o http_server.out; ./http_server.out

# Include modules 
require "http/server"

# Createsa new http server, then  defines like a lambda function that will be executed 
server = HTTP::Server.new do |context|
  context.response.content_type = "text/html"
  context.response.print "Hello world! The time is #{Time.local}"
  puts "New connection"
end

address = server.bind_tcp 8080
puts "Listening on http://#{address}"
server.listen
