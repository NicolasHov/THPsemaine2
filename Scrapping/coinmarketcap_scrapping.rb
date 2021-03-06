require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def get_price

  scrapped = {}

  info_array = []

  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

  info_array = page.css('a[class="price"]')

  info_array.each do |info|
  	name_end = info["href"].sub!("/currencies/","").sub!("/#markets", "")
    price_end = info["data-usd"] #.sub!("$","")
    scrapped[name_end] = price_end

  end
  puts pp scrapped
  puts scrapped.keys.count
end

def main
  loop {
  get_price()
  sleep(3600)
  }
end

main
