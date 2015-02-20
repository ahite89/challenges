require "sinatra"
require "pry"

get "/groceries" do
  items = File.readlines("grocery_list.txt")
  erb :index, locals: { items: items }
end

post "/groceries" do
  items = params["item"]

  File.open('grocery_list.txt', 'a') do |file|
      file.puts(items)
  end
  redirect "/groceries"
end
