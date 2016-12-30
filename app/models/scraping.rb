class Scraping
  def self.contents_urls
    links = []
    agent = Mechanize.new
    current_page = agent.get("http://www.jair.org/contents.html")
    elements = current_page.search('li > a')
    elements.each do |ele|
      links << ele.get_attribute('href')
    end 
    links.each do |link|
      volumes_urls('http://www.jair.org/' + link)
    end
  end

  def self.volumes_urls(link)
    links = []
    agent = Mechanize.new
    current_page = agent.get(link)
    elements = current_page.search('.media a:first-child')
    elements.each do |ele|
      links << ele.get_attribute('href')
    end
    links.each do |link|
      get_article('http://www.jair.org/' + link)
    end
  end

  def self.get_article(link)
    agent = Mechanize.new
    current_page = agent.get(link)
    elements = current_page.at('cite').inner_text
    elements.gsub!(/\n/, " ")
     author = elements.split(' (').first
     date = elements.match(/\d{4}/)[0].to_s.to_i
     title = elements.match(/\"(.+)\"/)[1]
     abstract = current_page.search('.abstract p')[1].inner_text
     abstract = abstract.scrub('')
    begin
 article = Article.new(title: title, author: author, date: date, abstract: abstract)
 article.save
rescue
 binding.pry
end
end

end
