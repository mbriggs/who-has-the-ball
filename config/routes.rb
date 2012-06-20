WhoHasTheBall::Application.routes.draw do
  resource :entry
  root to: "application#index"
end
