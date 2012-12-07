#
# to start local run in colsole:
#  ruby backend-api.rb -p 5678
# where `5678` is port
# then browse: http://localhost:5678/api/items.json
#

require 'rubygems'
require 'sinatra'
require 'json'

get '/api/items.json' do
  headers 'Access-Control-Allow-Origin' => '*'
  items = []
  items << { :name=> 'Item 1' }
  items << { :name=> 'Item 2' }
  items << { :name=> 'Item 3' }
  items.to_json
end
