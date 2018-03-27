require 'csv'

csv_file = "source/csvs/pulls.csv"
markdown_file = "source/_posts/notes/top-contributions.md"
pulls = CSV.read(csv_file)

content = "layout: note
date: 2013-09-27
title: 'Top contributions to Github repositories'
---

A list of repositories I’ve contributed to on [Github](https://github.com/fofr).
Last updated on #{Date.today.strftime('%e %b %Y')}.

| Repository | Pull requests |
|--|--|
"

count = pulls.drop(1).each_with_object(Hash.new(0)) do |row, counter|
  repo = row[2]
  counter[repo.downcase] += 1
end

count.sort_by { |repo, count| -count }.each do |repo, count|
  content << "| <a href=\"https://github.com/#{repo}\" class=\"pr-link\">#{repo}</a> | <a href=\"https://github.com/#{repo}/pulls?utf8=%E2%9C%93&q=is%3Apr+author%3Afofr\">#{count}</a> |\n"
end

File.open(markdown_file, 'w') do |f|
  f.write(content)
end

puts "Top contributions table updated"
