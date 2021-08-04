require 'httparty'
require 'nokogiri'
require 'open-uri'
require 'byebug'
require 'time'
require 'active_support/all'

def fetcher
  url = 'https://www.express.co.uk/news/royal/1458240/prince-harry-news-meghan-markle-duke-of-sussex-royal-family-latest-news'
  # url = "https://timesofindia.indiatimes.com/india/diljit-dosanjh-the-sardar-with-swag-who-has-won-indias-heart/articleshow/79588864.cms"
  # unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML.parse(open(url))
  # joblistings = parsed_page.css('div.text-description') #count => 6
 
    image = parsed_page.at("meta[property='og:image']")['content'] if parsed_page.at("meta[property='og:image']").present?
    title = parsed_page.at("meta[property='og:title']")['content'] if parsed_page.at("meta[property='og:title']").present?
    description = parsed_page.at("meta[property='og:description']")['content'] if parsed_page.at("meta[property='og:description']").present?
    link = parsed_page.at("meta[property='og:url']")['content'] if parsed_page.at("meta[property='og:url']").present?
    time = Time.parse(parsed_page.at("meta[property='article:published_time']")['content']) if parsed_page.at("meta[property='article:published_time']").present?
    tags = parsed_page.at("meta[property='og:tags']")['content'] if parsed_page.at("meta[property='og:tags']").present?


    puts ("Heading\n#{title}") if title.present?
    puts ("Description\n#{description}") if description.present?
    puts ("Link\n#{link}") if link.present?
    puts ("Published Time\n#{time}") if time.present?
    puts ("Tags\n#{tags}") if tags.present?
    puts ("Image\n#{image}") if image.present?
   # debugger
  # jobs = []
  # joblistings.each do |job_listing|
  #   # puts job_listing.css("div.p").text
  #   job = {
  #     content: job_listing.css("p").text
  #   }
  #   puts ("#{job[:content]}\n")
  #   jobs << job 
  # end
end

fetcher()