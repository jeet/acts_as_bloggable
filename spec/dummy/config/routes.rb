Rails.application.routes.draw do

  mount ActsAsBloggable::Engine => "/"
end
