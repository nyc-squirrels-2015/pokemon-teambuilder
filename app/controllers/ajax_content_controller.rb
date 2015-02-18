get '/new_selector/:number' do
  @pokemon = Pokemon.all
  erb :'team/_select_menu_add', locals: {number: params[:number]}, layout: false
end