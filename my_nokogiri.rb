# require the nokogiri gem and its dependencies
require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich"))

# search the HTML until you find the right element for the list
# get the class with class called 'ingredient-label' that is the span around each ingredient
list = doc.css('.ingredient-label')

# loop through the ingredients and puts just the ingredient text
list.each do |n|
    puts n.inner_html
end



