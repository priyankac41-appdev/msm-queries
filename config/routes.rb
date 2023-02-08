Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/:id_number", { :controller => "directors", :action => "specific_director" })

  get("/movies", { :controller => "directors", :action => "index" })
  get("/actors", { :controller => "directors", :action => "index" })
end
