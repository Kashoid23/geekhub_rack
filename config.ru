require 'rack'

class Application
  def call(env)
    [200, { 'content-type' => 'text/plain' }, ["Hello!"]]
  end
end

use Rack::Reloader, 0

run Application.new
