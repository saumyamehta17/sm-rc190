require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.walmart.com/search/search-ng.do?search_query=batman&ic=16_0&Find=Find&search_constraint=0"
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text

doc.css(".item").each do |item|
  #puts item.at_css(".ListItemLink").text
  title =  item.at_css(".ListItemLink").text

  if  item.at_css(".camelPrice")
    price = item.at_css(".camelPrice").text[/\$[0-9]+/]
    #item.at_css(".camelPrice span").text[/\$[0-9]+/]
  else
    price = 'In Stores only'
  end

  puts "#{title} - #{price}"
  puts item.at_css(".ListItemLink")[:href]
end