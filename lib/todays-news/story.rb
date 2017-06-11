'require pry'
class TodaysNews::Story

  attr_accessor :name, :url

  def initialize(name=nil, url=nil)
    @name = name
    @url = url

def self.all
  @all ||= scrape_todays_news
end

def self.find(id)
  self.all[id-1]
end

def summary
    @summary ||= plot_summary_doc.search("div >p:first-child").text
  end



def self.scrape_todays_news
  doc = Nokogiri::HTML(open("http://www.npr.org/sections/us/"))
  names = doc.seach("h2 a")
  binding.pry
  names.collect {|e| e.text.strip, "http://www.npr.org/sections/us#{e.attr("href").split("?").strip}"}


end

  def article_intro_doc
      @article_intro_doc ||= Nokogiri::HTML(open("#{self.url}transcript"))

    end

    def doc
      @doc ||= Nokogiri::HTML(open(self.url))
    end
end
end


  #I don't have the parentheses because I'm not calling new
