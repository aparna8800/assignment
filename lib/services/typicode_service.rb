class TypicodeService < ApiClient
	BASE_URL = "https://jsonplaceholder.typicode.com"

	def initialize
		super
	end

	def call
		@connection.get(BASE_URL + "/posts")
	end

	def validate_post_result(response)
		valid = true
		records = response.body
		records.each do |record|
			valid = valid && !record['userId'].nil?
			valid = valid && !record['id'].nil?
			valid = valid && !record['title'].nil?
			valid = valid && !record['body'].nil?
		end
		valid
	end
end