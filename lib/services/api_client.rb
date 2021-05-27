require 'faraday'
require 'faraday_middleware'
class ApiClient
	attr_accessor :connection
	def initialize
		@connection ||= Faraday.new do |f|
		  f.request :json # encode req bodies as JSON
		  f.request :retry # retry transient failures
		  f.response :follow_redirects # follow redirects
		  f.response :json # decode response bodies as JSON
		end
	end
end