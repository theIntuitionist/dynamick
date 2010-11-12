Rails.application.routes.draw do |map|
  match '/dynamick/:style/:image_name.:extension' => 'Dynamick/Dynamick#show'
end
