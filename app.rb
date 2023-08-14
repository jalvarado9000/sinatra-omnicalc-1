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

=begin



get("square_root/new") do


end

get("payment/new") do


end
get("random/new") do
 
=end
