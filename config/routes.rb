Naturesoft::HotelNewdiscoveryVn::Engine.routes.draw do
  root to: "home#index"
end
Naturesoft::Articles::Engine.routes.draw do
    get "ve-chung-toi.html" => "articles#about_us", as: :about_us
    get "blog-du-lich.html" => "articles#listing", as: :listing
    get "blog-du-lich/chi-tiet.html" => "articles#detail", as: :detail
end
Naturesoft::Contacts::Engine.routes.draw do
    get "lien-he.html" => "contacts#contact", as: :contacts
    post "lien-he.html" => "contacts#send_message"
end
Naturesoft::Core::Engine.routes.draw do
  get "dang-nhap.html" => "users#login", as: :login
  get "dang-ky.html" => "users#register", as: :register
end