Railscast sm-rc190
==================
Nokogiri
```
is used to extract data from raw html from other sites
```
git clone 'https://github.com/sweetymehta/sm-rc190.git'
```
```
install
```
sudo gem install nokogiri -- --wth-xml2-include=/usr/local/include/libxml2 --with-xml2-lib=/user/local/lib
```
gem file
```
gem 'nokogiri'
```
bundle install
```
bundle
```
check for any site to have prices for your scaffold
```
use selectgadget for selecting elements of page
see nokogiri_test.rb
do not use element name along with class or id
```
run ruby file
```
ruby nokogiri_test.rb
```
Now incoporate nokogiri with rails app
```
create rake file under lib/task
Call your model
see product_prices.rake
use CGI in url
```
TO run the app
```
rake db:seed
rake fetch_price
rails s
```

