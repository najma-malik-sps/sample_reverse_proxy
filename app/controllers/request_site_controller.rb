require 'net/http'

class RequestSiteController < ApplicationController
  REQUEST_URL = 'www.aboutamazon.com'.freeze
  COMPANY_URL = 'localhost:3000'.freeze

  def index
    request_url = "https://#{REQUEST_URL}"

    blog_html = Net::HTTP.get(URI(request_url))
    render html: rewrite_links(blog_html)
  end

  def news
    request_to_site
  end

  def workplace
    request_to_site('workplace')
  end

  def devices
    request_to_site('devices')
  end

  def retail
    request_to_site('retail')
  end

  def entertainment
    request_to_site('entertainment')
  end

  def aws
    request_to_site('aws')
  end

  def community
    request_to_site('community')
  end

  def sustainability
    request_to_site('sustainability')
  end

  def transportation
    request_to_site('transportation')
  end

  def amazon_ai
    request_to_site('amazon-ai')
  end

  def amazon_offices
    request_to_site('amazon-offices')
  end

  def amazon_prime
    request_to_site('amazon-prime')
  end

  def books_and_authors
    request_to_site('books-and-authors')
  end

  def company_news
    request_to_site('company-news')
  end

  def how_amazon_works
    request_to_site('how-amazon-works')
  end

  def innovation_at_amazon
    request_to_site('innovation-at-amazon')
  end

  def job_creation_investment
    request_to_site('job-creation-and-investment')
  end

  def operations
    request_to_site('operations')
  end

  def policy_news_views
    request_to_site('policy-news-views')
  end

  def small_business
    request_to_site('small-business')
  end

  def request_to_site(story_type = nil)
    request_url = "https://#{REQUEST_URL}"

    if story_type.present?
      request_url += params['path'].present? ? "/news/#{story_type}/#{params['path']}/" : "/news/#{story_type}"
    else
      request_url += params['path'].present? ? "/news/#{params['path']}/" : "/news"
    end

    blog_html = Net::HTTP.get(URI(request_url))
    render html: rewrite_links(blog_html)
  end

  # Update all page links to our official blog URL so that users don't
  # end up back on the original Amazon URL
  def rewrite_links(html)
    parsed_html = html.gsub("https://#{REQUEST_URL}/news", "http://#{COMPANY_URL}/news")
    parsed_html.html_safe
  end
end
