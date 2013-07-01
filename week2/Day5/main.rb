require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'sqlite3'

before do
  # sqlite3 ./store.sqlite3
  @db = SQLite3::Database.new './store.sqlite3'
end

get '/products' do
  rs = @db.execute 'SELECT * FROM products;'
  rs.map! { |row|
    h = {
      id: row[0],
      name: row[2]
    }
  }
  return rs.to_json
end

get '/products/:id' do
  id = params[:id]
  rs = @db.execute('SELECT * FROM products WHERE id = ?;', [id])
  rs.first.to_json
end

#Users
#Wishlists

get '/users' do
  rs = @db.execute 'SELECT * FROM users, products, wishlists WHERE users.id = wishlists.user_id AND products.id = wishlists.product_id;'



  # rs.map! { |row|
  #   h = {
  #     id: row[0],
  #     name: row[2]
  #   }
  # }
  return rs.to_json
end

get '/users/:userid' do
  userid = params[:userid]
  rs = @db.execute('SELECT * FROM users, products, wishlists WHERE users.id = wishlists.user_id AND products.id = wishlists.product_id AND users.id = ?;', [userid])
  rs.first.to_json
end




get '/wishlists' do
  rs = @db.execute 'SELECT * FROM users, products, wishlists WHERE users.id = wishlists.user_id AND products.id = wishlists.product_id;'
  rs.map! { |row|
    h = {
      name: row[2],
      product_name: row[5],
      price: row[6]
    }
  }
  return rs.to_json
end

# get '/products/:id' do
#   id = params[:id]
#   rs = @db.execute('SELECT * FROM products WHERE id = ?;', [id])
#   rs.first.to_json
# end