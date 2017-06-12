'require pry'
class TodaysNews::Story

  attr_accessor :name, :url, :summary

  def initialize(name=nil, url=nil)
    @name = name
    @url = url
end

def self.all
  @@all ||= scrape_todays_news
end

def self.find(id)
  self.all[id-1]
end

def summary
    @summary ||= article_intro_doc.search("div > p:first-child").text.strip
  end



def self.scrape_todays_news
  doc = Nokogiri::HTML(open("http://www.npr.org/sections/us/"))
  names = doc.search("h2 a")

  names.collect {|e| new(e.text.strip,  "http://www.npr.org/sections/us#{e.attr("href").strip}")}
end

  def article_intro_doc
      @article_intro_doc ||= Nokogiri::HTML(open("#{self.url}transcript"))
    end

    def doc
      @doc ||= Nokogiri::HTML(open(self.url))
      binding.pry
    end

end


  #I don't have the parentheses because I'm not calling new
