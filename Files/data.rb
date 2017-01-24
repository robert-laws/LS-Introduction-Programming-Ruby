# getting data from files

require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

# slashdot_articles = []
# File.open("slashdot.xml", "r") do |f|
#   doc = Nokogiri::XML(f)
#   slashdot_articles = doc.css('item').map { |i|
#     {
#       title: i.at_css('title').content,
#       link: i.at_css('link').content,
#       summary: i.at_css('description').content
#     }
#   }
# end

# feedzilla_articles =[]
# File.open("feedzilla.json", "r") do |f|
#   items = JSON.parse(f.read)
#   feedzilla_articles= items['articles'].map { |a|
#     {
#       title: a['title'],
#       link: a['url'],
#       summary: a['summary']
#     }
#   }
# end

# sorted_articles =  (feedzilla_articles + slashdot_articles).sort_by {|a| a[:title]}
# puts sorted_articles

books = []
File.open("book.json", "r") do |b|
    items = JSON.parse(b.read)
    books = items['titles'].map { |t|
        {
            name: t['name'],
            author: t['author'],
            date: t['date']
        }
    }
end

books.each do |k|
    k.each do |k, v|
        puts "#{k}: #{v}"
    end
    puts "------------------"
end