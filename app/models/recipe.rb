class Recipe
	include HTTParty

	#hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	#key_value = ENV['FOOD2FORK_KEY']

	default_options.update(verify: false)
	base_uri "http://www.food2fork.com/api/search"
	#base_uri "http://www.food2fork.com/api/search"
	default_params key: "7de14af89e1d9adee3c9fc61fd9108c4"
	format :json

	def self.for term
		get("", query: { q: term })["recipes"]
	end
end