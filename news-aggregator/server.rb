require "sinatra"
require "pry"
require 'csv'

saved_articles = []

get "/articles" do
  CSV.foreach('articles.csv', headers:true, header_converters: :symbol) do |row|
    saved_articles << row.to_a
  end
  erb :index, locals: { saved_articles: saved_articles }
end

get "/articles/new" do
  erb :form
end

post "/articles/form" do
  erb :form, locals: {titles: params["title"],
                      urls: params["url"],
                      descriptions: params["description"]}

  CSV.open('articles.csv', 'a') do |csv|
    csv << [params["title"], params["url"], params["description"]]
  end
  redirect "/articles"
end
