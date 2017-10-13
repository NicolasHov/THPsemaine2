require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


#TODO faire un hash pour ranger les valeurs
#TODO faire une exception pour les erreurs

def open_link

  scrapped = []

  mail = []

  landing_page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

  links = []
  landing_page.css('a[class = lientxt]').each do |link|
	link_end = link["href"].sub!(".","http://annuaire-des-mairies.com")
	links << link_end
  end


links.each do |ville|
  page = Nokogiri::HTML(open("#{ville}"))

  error = [] # on doit  vider le tableau à chaque boucle
  text_array = page.css('td[class = style27]').text.split

  text_array.each do |element|
    adress = element if element.include?("@")
    mail << adress
    scrapped << adress
    error << adress # dqsdsqd
  end

  if error.size == 0  # rezrezrez
    scrapped << "Unavailable"  # fdscsdd
  end
  puts scrapped

end
end



def get_links
landing_page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
puts landing_page.class   # => Nokogiri::HTML::Document

links = []
landing_page.css('a[class = lientxt]').each do |link|

	link_end = link["href"].sub!(".","http://annuaire-des-mairies.com")
	links << link_end
end

puts links

end


def text_mail

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/fremecourt.html"))
puts page.class   # => Nokogiri::HTML::Document

text_array = page.css('td[class = style27]').text.split
mail = []

text_array.each do |element|
mail << element if element.include?("@")
end
puts mail

#binding.pry
end


open_link
