# config.ru
use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['admin', 'admin']
end

require 'rack/jekyll'
run Rack::Jekyll.new
