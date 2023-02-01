Rails.application.routes.draw do
  get 'news' => 'request_site#news'
  match 'news/*path' => 'request_site#news', via: [:get, :post, :put, :patch, :delete]
  match 'news/workplace/*path' => 'request_site#workplace', via: [:get, :post, :put, :patch, :delete]
  match 'news/devices/*path' => 'request_site#devices', via: [:get, :post, :put, :patch, :delete]
  match 'news/retail/*path' => 'request_site#retail', via: [:get, :post, :put, :patch, :delete]
  match 'news/entertainment/*path' => 'request_site#entertainment', via: [:get, :post, :put, :patch, :delete]
  match 'news/aws/*path' => 'request_site#aws', via: [:get, :post, :put, :patch, :delete]
  match 'news/community/*path' => 'request_site#community', via: [:get, :post, :put, :patch, :delete]
  match 'news/sustainability/*path' => 'request_site#sustainability', via: [:get, :post, :put, :patch, :delete]
  match 'news/transportation/*path' => 'request_site#transportation', via: [:get, :post, :put, :patch, :delete]
  match 'news/amazon-ai/*path' => 'request_site#amazon_ai', via: [:get, :post, :put, :patch, :delete]
  match 'news/amazon-offices/*path' => 'request_site#amazon_offices', via: [:get, :post, :put, :patch, :delete]
  match 'news/amazon-prime/*path' => 'request_site#amazon_prime', via: [:get, :post, :put, :patch, :delete]
  match 'news/books-and-authors/*path' => 'request_site#books_and_authors', via: [:get, :post, :put, :patch, :delete]
  match 'news/company-news/*path' => 'request_site#company_news', via: [:get, :post, :put, :patch, :delete]
  match 'news/how-amazon-works/*path' => 'request_site#how_amazon_works', via: [:get, :post, :put, :patch, :delete]
  match 'news/innovation-at-amazon/*path' => 'request_site#innovation_at_amazon', via: [:get, :post, :put, :patch, :delete]
  match 'news/job-creation-and-investment/*path' => 'request_site#job_creation_investment', via: [:get, :post, :put, :patch, :delete]
  match 'news/operations/*path' => 'request_site#operations', via: [:get, :post, :put, :patch, :delete]
  match 'news/policy-news-views/*path' => 'request_site#policy_news_views', via: [:get, :post, :put, :patch, :delete]
  match 'news/small-business/*path' => 'request_site#small_business', via: [:get, :post, :put, :patch, :delete]

  root "request_site#index"
end
