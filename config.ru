require 'rack/jekyll'
require 'yaml'

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['admin', 'admin']
end

run Rack::Jekyll.new
