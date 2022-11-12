# frozen_string_literal: true

require 'rack'

require './application'

use Rack::Reloader, 0
use Rack::Auth::Basic do |username, password|
  username == 'vitalii' && password == 'password'
end

run Application.new
