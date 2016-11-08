Naturesoft::HotelNewdiscoveryVn::Engine.routes.draw do
  root to: "home#index"
  get "ve-chung-toi.html" => "home#about_us", as: :about_us
end
Naturesoft::Articles::Engine.routes.draw do
  get "blog-du-lich.html" => "articles#listing", as: :listing
  get "blog-du-lich/:id-:title" => "articles#detail", as: :blog_detail
  get "cau-hoi-thuong-gap.html" => "articles#faq", as: :faq
end
Naturesoft::Areas::Engine.routes.draw do
  get "khach-san-theo-dia-diem.html" => "areas#listing", as: :areas_listing
end
Naturesoft::Contacts::Engine.routes.draw do
  get "trang-lien-he.html" => "contacts#contact", as: :contacts
  post "trang-lien-he.html" => "contacts#send_message"
end
Naturesoft::Core::Engine.routes.draw do
  get "dang-nhap.html" => "users#login", as: :login
  get "dang-ky.html" => "users#register", as: :register
  get "quen-mat-khau.html" => "users#forgot_password", as: :forgot_password
  get "cap-nhat-mat-khau-moi.html" => "users#reset_password", as: :reset_password
  get "thanh-vien/ho-so.html" => "users#admin_area", as: :admin_area
  post "thanh-vien/ho-so.html" => "users#admin_area"
  get "thanh-vien/lich-su.html" => "users#order_history", as: :order_history
  get "thanh-vien/yeu-thich.html" => "users#wish_list", as: :wish_list
  get "thanh-vien/cai-dat.html" => "users#settings", as: :settings
  post "thanh-vien/cai-dat.html" => "users#settings"
end
Naturesoft::Hotels::Engine.routes.draw do
  resources :reviews
  resources :event_orders
  resources :orders do
    collection do
      get "chi-tiet-thong-tin-dat-phong.html" => "orders#invoice", as: :invoice
    end
  end
  resources :wish_lists do
    collection do
      get 'add_item'
    end
  end
  get "danh-sach-khach-san/dang-luoi.html" => "hotels#hotels_grid", as: :hotels_grid
  get "danh-sach-khach-san/dang-danh-sach.html" => "hotels#hotels_list", as: :hotels_list
  get "danh-sach-khach-san/chi-tiet.html" => "hotels#detail", as: :hotel_detail
  get "khuyen-mai.html" => "events#hotel_listing", as: :events_hotel_listing
  get "dang-ky-nhanh.html" => "quick_orders#quick_booking", as: :quick_bookings
  post "dang-ky-nhanh.html" => "quick_orders#quick_booking"
  get "danh-gia-khach-san-:id.html" => "hotels#reviews_list", as: :hotel_reviews_list
end
Naturesoft::Newsletters::Engine.routes.draw do
  get "dang-ky-nhan-tin.html" => "newsletters#add_email", as: :newsletters
  post "dang-ky-nhan-tin.html" => "newsletters#add_email"
end
