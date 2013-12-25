require 'net/http'
require 'uri'
class PosterController < ApplicationController
  def create

  	# my_connection = Net::HTTP.new('http://api.map.baidu.com/geodata/v2/poi/create', 80)
  	# reponse = my_connection.post(URI.parse('http://api.map.baidu.com/geodata/v2/poi/create'), params)

	uri = URI("http://api.map.baidu.com/geodata/v2/poi")
	http = Net::HTTP.new(uri.host, uri.port)
	request = Net::HTTP::Post.new("/create")
	request.add_field('Content-Type', 'application/json')
	request.body = params
	response = http.request(request)

  	respond_to do |format|
    	# msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
    	format.json  { render :json => response } # don't do msg.to_json
  	end
  end

  def show
  end
end