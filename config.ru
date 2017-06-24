require 'rack/jekyll'
require 'yaml'

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  # [username, password] == [ENV['AUTH_USERNAME'], ENV['AUTH_PASSWORD']]
  [username, password] == ['admin','admin']
end

run Rack::Jekyll.new
