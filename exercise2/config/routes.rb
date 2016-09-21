class OwnerConstrainer
  def matches?(request)
    id = request.path[1..-1].split("/").first
    Owner.find_by_name(id)
  end
end


Rails.application.routes.draw do
  resources :owners, param: :name do
    resources :articles
  end
  resources :articles

  constraints(OwnerConstrainer.new) do
    get '/:name', to: "owners#show"
    scope '/:owner_name' do
      resources :articles
    end
  end
end
