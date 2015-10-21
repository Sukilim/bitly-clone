get '/' do
  erb :"static/index"
end

post '/urls' do
	url = Url.new(long_url: params[:long_url])
	url.shorten
	url.save
	redirect to :"/#{url.id}"
end

get '/:id' do
	@url = Url.find(params[:id])
	erb :"static/url"
end
