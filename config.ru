require 'rack/jekyll'
run Rack::Jekyll.new

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['admin', 'admin']
end
