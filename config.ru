require 'rack/jekyll'
require 'yaml'

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == [ENV['USERNAME'],ENV['PASSWORD']]
end

run Rack::Jekyll.new
