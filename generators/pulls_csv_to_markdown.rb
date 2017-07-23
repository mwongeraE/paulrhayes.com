require 'csv'
require 'date'

csv_file = "source/csvs/pulls.csv"
markdown_file = "source/_posts/notes/pull-requests.md"
pulls = CSV.read(csv_file)

content = "layout: note
date: 2013-09-27
title: 'Pull requests'
---

A list of my pull requests exported from [Github](https://github.com/fofr).
#{pulls.size - 1} pull requests. Last exported on #{Date.today.strftime('%e %b %Y')}.

| Date | Pull request |
|--|--|
"

pulls.drop(1).each do |row|
  date = Date.parse(row[1])
  content << "| <time class=\"pr-date\" datetime=\"#{row[0]}\">#{date.strftime('%e %b %Y')}</time> | <a href=\"#{row[3]}\" class=\"pr-repo\">#{row[2]}</a> <a class=\"pr-link\"  href=\"https://github.com#{row[5]}\">#{row[4].gsub('{%', '‘').gsub('%}', '’')}</a> |\n"
end

File.open(markdown_file, 'w') do |f|
  f.write(content)
end

puts "Pull request table updated"
