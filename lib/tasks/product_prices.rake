desc "Fetching prices from Walmart.com"
task :fetch_price => :environment do
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'

  Product.find_all_by_price(nil).each do |product|
    url = "http://www.walmart.com/search/search-ng.do?search_query=#{CGI.escape(product.name)}&ic=16_0&Find=Find&search_constraint=0"
      #for fetching which has word batman
      #url = "http://www.walmart.com/search/search-ng.do?search_query=batman&ic=16_0&Find=Find&search_constraint=0"
      doc = Nokogiri::HTML(open(url))

      #Comment part is to display all title amd price for a single page
      #puts doc.at_css("title").text

      #doc.css(".item").each do |item|
      #  #puts item.at_css(".ListItemLink").text
      #  title =  item.at_css(".ListItemLink").text
      #
        if  price = doc.at_css(".camelPrice")
          price = price.text[/\$[0-9]+/]
          #item.at_css(".camelPrice span").text[/\$[0-9]+/]
        else
          price = 'In Stores only'
        end

        #puts "#{title} - #{price}"
        #puts item.at_css(".ListItemLink")[:href]
        #end

        product.update_attributes(price: price)

  end
end