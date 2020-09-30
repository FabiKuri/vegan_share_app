Rails.application.routes.draw do
  resourced :tweets, only: :index
end
