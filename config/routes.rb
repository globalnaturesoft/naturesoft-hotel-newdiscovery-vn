Naturesoft::HotelNewdiscoveryVn::Engine.routes.draw do
  root to: "home#index"
end
Naturesoft::Articles::Engine.routes.draw do
  get "ve-chung-toi.html" => "articles#about_us", as: :about_us
  get "blog-du-lich.html" => "articles#listing", as: :listing
  get "blog-du-lich/chi-tiet.html" => "articles#detail", as: :blog_detail
end
Naturesoft::Contacts::Engine.routes.draw do
  get "lien-he.html" => "contacts#contact", as: :contacts
  post "lien-he.html" => "contacts#send_message"
end
Naturesoft::Core::Engine.routes.draw do
  get "dang-nhap.html" => "users#login", as: :login
  get "dang-ky.html" => "users#register", as: :register
  get "quen-mat-khau.html" => "users#forgot_password", as: :forgot_password
  get "thanh-vien.html" => "users#admin_area", as: :admin_area
end
Naturesoft::Hotels::Engine.routes.draw do
  get "danh-sach-khach-san/dang-luoi.html" => "hotels#hotels_grid", as: :hotels_grid
  get "danh-sach-khach-san/dang-danh-sach.html" => "hotels#hotels_list", as: :hotels_list
  get "danh-sach-khach-san/chi-tiet.html" => "hotels#detail", as: :hotel_detail
end