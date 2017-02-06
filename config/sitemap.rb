Sitemap::Generator.instance.load :host => "dashörgeräte.com" do

  # Sample path:
     path :root, :priority => 1
     path :about, :priority => 0.5, :change_frequency => "daily"
     path :soft, :priority => 0.5, :change_frequency => "daily"
     path :c330ml, :priority => 0.5, :change_frequency => "daily"
     path :bottle_drinks, :priority => 0.5, :change_frequency => "daily"
     path :energy_drinks, :priority => 0.5, :change_frequency => "daily"
     path :beer, :priority => 0.5, :change_frequency => "daily"
     path :mineral_water, :priority => 0.5, :change_frequency => "daily"
     path :spirit_drinks, :priority => 0.5, :change_frequency => "daily"
  # The specified path must exist in your routes file (usually specified through :as).

  # Sample path with params:
  #   path :faq, :params => { :format => "html", :filter => "recent" }
  # Depending on the route, the resolved url could be http://mywebsite.com/frequent-questions.html?filter=recent.

  # Sample resource:
  #   resources :articles

  # Sample resource with custom objects:
  #   resources :articles, :objects => proc { Article.published }

  # Sample resource with search options:
  #   resources :articles, :priority => 0.8, :change_frequency => "monthly"

  # Sample resource with block options:
  #   resources :activities,
  #             :skip_index => true,
  #             :updated_at => proc { |activity| activity.published_at.strftime("%Y-%m-%d") }
  #             :params => { :subdomain => proc { |activity| activity.location } }

end
