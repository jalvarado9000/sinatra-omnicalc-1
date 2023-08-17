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



get("/payment/new") do

erb(:payment_in)
end


get("/payment/result") do

  erb(:payment_out)
  end

=begin


get("payment/new") do


end

get("random/new") do
 
=end
