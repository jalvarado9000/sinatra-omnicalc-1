require "sinatra"
require "sinatra/reloader"

get("/goodbye") do
  erb(:hello)

end


get("/square/new") do
erb(:square_in)

end

get("/square/result") do

  erb(:square_out)
end

get("/square_root/new") do

erb(:root_in)
end

get("/root/result") do

erb(:root_out)
end






=begin


get("payment/new") do


end

get("random/new") do
 
=end
