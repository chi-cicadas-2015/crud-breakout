get '/tshirts' do
  @tshirts = Tshirt.all
  erb :"tshirts/index"
end

get '/tshirts/:id' do
  @tshirt = Tshirt.find_by(id: params[:id])
  erb :"tshirts/show"
end

# new   GET /tshirts/new
get '/tshirts/new' do
  @tshirt = Tshirt.new
  erb :"tshirts/new"
end

# create POST /tshirts
post '/tshirts' do
  @tshirt = Tshirt.new(params[:tshirt])
  if @tshirt.save
    redirect '/tshirts'
  else
    erb :"tshirts/new"
  end
end

get '/tshirts/:id/edit' do
  @tshirt = Tshirt.find_by(id: params[:id])
  erb :"tshirts/edit"
end

put '/tshirts/:id' do
  @tshirt = Tshirt.find_by(id: params[:id])
  @tshirt.update_attributes(params[:tshirt])
  if @tshirt.valid?
    redirect '/tshirts'
  else
    erb :"tshirts/edit"
  end
end

delete '/tshirts/:id' do
  Tshirt.destroy(params[:id])
  redirect '/tshirts'
end
