require 'csv'
require 'date'

csv_file = "source/csvs/movies.csv"
markdown_file = "source/_posts/notes/movie-ratings.md"
csv_contents = CSV.read(csv_file)

content = "layout: note
date: 2002-05-11
title: 'Movie ratings'
---

List exported from my [IMDB movie rating history](http://www.imdb.com/user/ur1735811/ratings).
Last exported on #{Date.today.strftime('%e %b %Y')}.

| Date | Rating | Movie |
|--|--|
"

csv_contents.drop(1).each do |row|
  if row[6] != 'TV Episode'
    date = Date.parse(row[2])
    content << "| <time class=\"row-date\" datetime=\"#{date}\">#{date.strftime('%e %b %Y')}</time> | #{row[8]}/10 | <a href=\"#{row[15]}\" class=\"row-link\">#{row[5]}</a> (#{row[11]}) |\n"
  end
end

File.open(markdown_file, 'w') do |f|
  f.write(content)
end

puts "CSV table re-generated"
