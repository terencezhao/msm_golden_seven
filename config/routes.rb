Rails.application.routes.draw do
  
  # -------------------- Directors --------------------#
  # CREATE
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/create_director", { :controller => "directors", :action => "create_row" })
  
  # READ
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "show" })
  
  # UPDATE
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })
  get("/directors/:id", { :controller => "directors", :action => "update_row" })
  
  # DELETE
  get("/delete_director/:id", { :controller => "directors", :action => "destroy_row" })

  # -------------------- Actors --------------------#
  # CREATE
  get("/actors/new_form", { :controller => "actors", :action => "new_form" })
  get("/create_actor", { :controller => "actors", :action => "create_row" })
  
  # READ
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:id", { :controller => "actors", :action => "show" })
  
  # UPDATE
  get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })
  get("/actors/:id", { :controller => "actors", :action => "update_row" })
  
  # DELETE
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy_row" })
  
  
  # -------------------- Movies --------------------#
  # CREATE
  get("/movies/new_form", { :controller => "movies", :action => "new_form" })
  get("/create_movie", { :controller => "movies", :action => "create_row" })
  
  # READ
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id", { :controller => "movies", :action => "show" })
  
  # UPDATE
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
  get("/movies/:id", { :controller => "movies", :action => "update_row" })
  
  # DELETE
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy_row" })
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
