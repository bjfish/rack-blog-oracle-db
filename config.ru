require 'oci8'


OCI = OCI8.new('blog', '', 'blog_development')

class App
    def call(env)
      headers = {
        'Content-Type' => 'text/html'
      }
      
      response = ['<h1>Hello World</h1>', '<ol>']
      OCI.exec('select title from articles;').each do |r|
        response << "<li>#{r.to_s}</li>"
      end

      response << '</ol>'
      
      [200, headers, response]
    end
 end
 
 run App.new
 
