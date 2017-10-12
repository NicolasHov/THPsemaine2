require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


def get_price

  scrapped = {}

  name_array = []
  price_array = []

  info_array = []

  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

  info_array = page.css('a[class="price"]')

  info_array.each do |info|
  	name_end = info["href"].sub!("/currencies/","").sub!("/#markets", "")
  	name_array << name_end

    price_end = info["data-usd"] #.sub!("$","")
  	price_array << price_end


    scrapped[name_end] = price_end

  end
  puts pp scrapped
  puts scrapped.keys.count
end

get_price()
