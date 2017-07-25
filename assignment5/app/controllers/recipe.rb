require 'HTTParty'

class Recipe
	include HTTParty

	base_uri 'http://www.recipepuppy.com/api/'
	default_params output: "json"
	default_params onlyImages: 1
	format :json

	def self.for(tag)
		get("", query: {q: tag})['results']
	end
end 

#puts Recipe.for "chocolate"
#puts Recipe.for "apple pie"