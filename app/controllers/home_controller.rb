class HomeController < ApplicationController
	#require 'net/http'
	#require 'uri'

  def index
		# get public home
		# @contact = Contact.new
		# @banners = Banner.all
		# @pictures = Picture.order("order_no desc").limit(8).reverse

		# @data = `curl -X GET 'https://ap-southeast-1-api.uiza.co/api/public/v4/live/entity?appId=fad6c0614c4a40ff8c30198d3289b1da&limit=6&page=1' -H 'Accept: */*' -H 'Authorization: uap-fad6c0614c4a40ff8c30198d3289b1da-dceda6cb' -H 'Cache-Control: no-cache' -H 'Connection: keep-alive' -H 'Host: ap-southeast-1-api.uiza.co' -H 'Postman-Token: ee039c08-39d1-4c5b-8a4f-c56923b53df3,95c2189e-bf66-4508-bcdd-b86eb61af8ae' -H 'User-Agent: PostmanRuntime/7.14.0' -H 'accept-encoding: gzip, deflate' -H 'cache-control: no-cache`


		#uri = URI.parse("https://ap-southeast-1-api.uiza.co/api/public/v4/live/entity?appId=fad6c0614c4a40ff8c30198d3289b1da&limit=6&page=1")
		#request = Net::HTTP::Get.new(uri)
		#request["Accept"] = "*/*"
		#request["Authorization"] = "uap-fad6c0614c4a40ff8c30198d3289b1da-dceda6cb"
		#request["Cache-Control"] = "no-cache"
		#request["Connection"] = "keep-alive"
		#request["Host"] = "ap-southeast-1-api.uiza.co"
		#request["Postman-Token"] = "ee039c08-39d1-4c5b-8a4f-c56923b53df3,95c2189e-bf66-4508-bcdd-b86eb61af8ae"
		#request["User-Agent"] = "PostmanRuntime/7.14.0"

		#req_options = {
			#use_ssl: uri.scheme == "https",
		#}

		#@response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
			#http.request(request)
		#end

		#@data = JSON.parse(@response.body)["data"]


		# https://sdk.uiza.io/#/fad6c0614c4a40ff8c30198d3289b1da/live/44d3fd85-6a2c-4167-8355-37cd129b9258/embed?iframeId=iframe-44d3fd85-6a2c-4167-8355-37cd129b9258&streamName=daf384f8-fceb-4761-9ba7-5c5528846b50&region=ap-southeast-1&feedId=e16017e6-59a1-4320-af48-b0856959235c&env=prod&version=4&native=true&showCCU=true&api=YXAtc291dGhlYXN0LTEtYXBpLnVpemEuY28=
		# https://sdk.uiza.io/#/fad6c0614c4a40ff8c30198d3289b1da/live/1eeba72e-e3b9-471c-a0d3-639ee7fe7a76/embed?iframeId=iframe-1eeba72e-e3b9-471c-a0d3-639ee7fe7a76&streamName=0f1a2a34-7122-484f-a360-e5461bcb823c&region=ap-southeast-1&feedId=4ca3aa38-8a48-4622-a761-34c621f0059e&env=prod&version=4&native=true&showCCU=true&api=YXAtc291dGhlYXN0LTEtYXBpLnVpemEuY28=
		#url = 'http://testapi.offersdb.com/distribution/beta/offers?radius=10&postal_code=30305'
		#mykey = 'demo'
		#uri = URI(url)

		#request = Net::HTTP::Get.new(uri.path)
		#request['Content-Type'] = 'application/xml'
		#request['Accept'] = 'application/xml'
		#request['X-OFFERSDB-API-KEY'] = mykey

		#response = Net::HTTP.new(uri.host,uri.port) do |http|
			#http.request(request)
		#end

		#puts response
  end

  def about
		# get public about
  end

  def explore
		# get public explore
  end

  def clips
		# get public explore
  end

  def games
		# get public explore
  end

  def game
		# get public explore
  end

  def find_interest
		# get public explore
  end

  def following
		# get public explore
  end

  def user
		# get public explore
  end

  def profile_settings
		# get public explore
  end

  def profile_security
		# get public explore
  end

  def profile_notifications
		# get public explore
  end

  def profile_verification
		# get public explore
  end

  def profile_payment
		# get public explore
  end

  def profile_guide
		# get public explore
  end

  def profile_voting
		# get public explore
  end

  def profile
		# get public explore
  end

  def profile_clips
		# get public explore
  end

  def profile_friends
		# get public explore
  end

  def registered
		# get public explore
  end

  def streaming_tools
		# get public streaming tools
  end

  def profile_analytics
		# get public streaming tools
  end

  def profile_dashboard_clips
		# get public streaming tools
  end

  def profile_dashboard_live
		# get public streaming tools
  end

  def event
		# get public streaming tools
  end

  def terms
		# get public streaming tools
  end

  def privacy
		# get public streaming tools
  end

  def guidelines
		# get public streaming tools
  end

  def contact
		# get public streaming tools
  end

  def live
		# get public streaming tools
  end

  def clip
		# get public streaming tools
  end

  def profile_chat
		# get public streaming tools
  end

end
