class ActorsController < ApplicationController
    
    def new_form
        render("actors_templates/new_form_template.html.erb")   
    end
    
    def create_row
        new_actor = Actor.new
        new_actor.name = params["name"]
        new_actor.bio = params["bio"]
        new_actor.dob = params["dob"]
        new_actor.image_url = params["image_url"]
        new_actor.save
        @actors_count = Actor.all.count
        redirect_to("/actors")
        # render("pictures_templates/create_row_template.html.erb")    
    end
    
    def index
        @actors = Actor.all
        render("actors_templates/index_template.html.erb")    
    end
    
    def show
        @actor = Actor.find(params["id"])
        render("actors_templates/show_template.html.erb")    
    end

    def edit_form
        @actor = Actor.find(params["id"])
        render("actors_templates/edit_form_template.html.erb")    
    end    
    def update_row
        @actor = Actor.find(params["id"])
        @actor.name = params["name"]
        @actor.bio = params["bio"]
        @actor.dob = params["dob"]
        @actor.image_url = params["image_url"]
        @actor.save
        redirect_to("/actors/" + params["id"])
        # render("pictures_templates/update_row_template.html.erb")    
    end
    
    def destroy_row
        Actor.find(params["id"]).destroy
        @actor_count = Actor.all.count
        redirect_to("/actors")
        # render("pictures_templates/destroy_row_template.html.erb")    
    end    

    
end