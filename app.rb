require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_in)

end


get("/square/new") do
erb(:square_in)
end

get("/square/results") do
  @num = params.fetch("number")
  @number_square = params.fetch("number").to_f ** 2
  erb(:square_out)
end



get("/square_root/new") do
erb(:root_in)
end

get("/root/results") do
@user_num = params.fetch("user_number")
@user_root = Math.sqrt(params.fetch("user_number").to_f)
erb(:root_out)
end



get("/payment/new") do
erb(:payment_in)
end


get("/payment/results") do
  @original_apr = params.fetch("user_apr").to_f
  @original_principal = params.fetch("user_pv").to_f

  @apr = format("%.4f%%", params.fetch("user_apr").to_f)
  @years =  params.fetch("user_years").to_i
  @principal = "$" + format("%0.2f", params.fetch("user_pv")).reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse

  @actual_apr = (@original_apr/100).round(5)
  @months = 12
  @r = (@actual_apr/@months).round(5)
  @n = @years * @months
  @payment_d = (1 - (1+ @r) ** -@n).round(5)
  @payment_u = (@r*@original_principal).round(5)
  @payment = ((@payment_u / @payment_d)-0.01).round(2)



  erb(:payment_out)
  end



  get("/random/new") do
    erb(:random_in)
  end

  get("/random/results") do

    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f
    
      if @user_min > @user_max
        @user_min, @user_max = @user_max, @user_min
      end
      
    


    @random_number = rand(@user_min..@user_max)

    erb(:random_out)
  end
