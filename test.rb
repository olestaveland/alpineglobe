require 'rubygems'
require 'nokogiri'
require 'open-uri'

#url = "http://www.walmart.com/search/search-ng.do?search_constraint=0&ic=48_0&search_query=Batman&Find.x=0&Find.y=0&Find=Find"
#doc = Nokogiri::HTML(open(url))
#puts doc.at_css("title").text

#url = "http://www.skiinfo.no/regions.html"
#doc = Nokogiri::HTML(open(url))
#puts doc.at_css("#rmap_us:nth-child(6) a").text
#doc.css(".regions").each do |item|
#  puts item.at_css(".rmap_list").text
#end

#denne fungerer til å hente ett skisted fra listen over skisteder i norge, det er bare ett valg
#url = "http://www.skiinfo.no/oslo/profil.html"
#doc = Nokogiri::HTML(open(url))
#doc.css(".state_snow").each do |item|
#  puts item.at_css(".cell").text
#end
#

#denne fungerer til å hente ett skisted fra listen over skisteder i norge, det er bare ett valg
url = "http://www.skiinfo.no/ostlandet/dombas/profil.html"
doc = Nokogiri::HTML(open(url))
#doc.css(".state_snow").each do |item|
#  puts item.at_css(".cell").text
#end
#TOTALT ANTALL HEISER
puts doc.at_css(".total").text
#ANTALL GONDOLER OG BANER
puts doc.at_css(".trams").text
#ANTALL SEKSETERS EKSPRESSHEISER
puts doc.at_css(".fast_sixes").text
#ANTALL FIRESETERS EKSPRESSHEISER
puts doc.at_css(".fast_quads").text
#ANTALL FIRESETERS HEISER
puts doc.at_css(".quad").text
#TRESETERS STOLHEISER
puts doc.at_css(".triple").text
#TOSETER STOLHEISER
puts doc.at_css(".double").text
#OVERFLATEHEISER
puts doc.at_css(".surface").text

puts "HOYDE OVER HAVET "
#HØYDE TOPP
puts "Topp " + doc.at_css(".top").text
#FALLMETER
puts "Fallmeter " + doc.at_css(".drop").text
#BUNN
puts "Bunn " + doc.at_css(".bottom").text
#NYBEGYNNERLØYPER
puts "Nybegynner Loyper " + doc.at_css(".beginner").text
#LETTELØYPER
puts "Lette Loyper " + doc.at_css(".intermediate").text
#VANSKELIGELØYPER
puts "Vanskelige Loyper " + doc.at_css(".advanced").text
#EXPERTLØYPER
puts "Expert Loyper " + doc.at_css(".expert").text


puts "Nedfarter " + doc.at_css("#resort_terrain :nth-child(2) .terrain_module .value").text

#SNØFALL SISTE 24 TIMER
puts "Snofall siste 24 timer " + doc.at_css(".snow_report_content:nth-child(1) .white_pill").text
#SNØFALL SISTE 48 TIMER
puts "Snofall siste 48 timer " + doc.at_css(".snow_report_content:nth-child(2) .white_pill").text
#SNØFALL SISTE 72 TIMER
puts "Snofall siste 72 timer " + doc.at_css(".snow_report_content:nth-child(3) .white_pill").text

#PLANLAGT ÅPNING AV SKIANLEGG
doc.css(".infobox").each do |item|
    puts item.at_css("p").text
end
#PLANLAGT STENGING AV SKIANLEGGET
puts doc.at_css(".important_dates p:nth-child(4)").text

#ANTALL ÅR ÅPENT
puts doc.at_css(".important_dates p:nth-child(5)").text

#
#HER KOMMER ALT SOM HAR MED VÆR OG GJØRE
#
puts "VAER KOMMER HER"

url = "http://www.skiinfo.no/ostlandet/grefsenkleiva/vaer.html"
doc = Nokogiri::HTML(open(url))
#DAG

#INFO FRA KL 6-12
puts "Dag " + doc.at_css(".dayDate").text

puts "Tidspunkt" + doc.at_css(".data li:nth-child(1) .text , .data li:nth-child(1) span").text

#SNØMENGDE TOPP 06-12
puts "Snomengde paa toppen " + doc.at_css(".data li:nth-child(1) .top .white_pill").text
puts "Temperatur paa toppen " + doc.at_css(".top .below").text
puts "Vindretning paa toppen " + doc.at_css(".data li:nth-child(1) .top strong").text
puts "Vindstyrke paa toppe " + doc.at_css(".data li:nth-child(1) .top .wind_force").text

#INFO FRA KL 12-18
puts "Dag " + doc.at_css(".dayDate").text

puts "Tidspunkt" + doc.at_css("li:nth-child(2) .time .text").text

#SNØMENGDE TOPP 12-18
puts "Snomengde paa toppen " + doc.at_css("li:nth-child(2) .top .white_pill").text
puts "Temperatur paa toppen " + doc.at_css("li:nth-child(2) .top .above").text
puts "Vindretning paa toppen " + doc.at_css("li:nth-child(2) .wind_force strong").text
puts "Vindstyrke paa toppe " + doc.at_css("li:nth-child(2) .top .wind_force").text

#INFO FRA KL 18-24
puts "Dag " + doc.at_css(".dayDate").text

puts "Tidspunkt" + doc.at_css("li:nth-child(3) .time .text").text

#SNØMENGDE TOPP 18-24
puts "Snomengde paa toppen " + doc.at_css("li:nth-child(3) .top .white_pill").text
puts "Temperatur paa toppen " + doc.at_css("li:nth-child(3) .top .above").text
puts "Vindretning paa toppen " + doc.at_css("li:nth-child(3) .wind_force strong").text
puts "Vindstyrke paa toppe " + doc.at_css("li:nth-child(3) .top .wind_force").text














