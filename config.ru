require 'oci8'


OCI = OCI8.new('username', 'password', 'database_name')

class App
    def call(env)
      headers = {
        'Content-Type' => 'text/html'
      }
      
      response = ['<h1>Hello World</h1>', '<ol>']
      OCI.exec('select title from articles') do |r|
        r.each do |i|
          response << "<li>#{i.to_s}</li>"
        end
      end

      response << '</ol>'
      
      [200, headers, response]
    end
 end
 
 run App.new

