require 'rack/jekyll'
require 'yaml'

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['admin', 'admin']
end

use Rack::Static, :urls => [""], :root => '.', :index => 'index.html'

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=0'
    },
    File.open('index.html', File::RDONLY)
  ]
}

run Rack::Jekyll.new
