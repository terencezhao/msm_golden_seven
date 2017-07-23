class DirectorsController < ApplicationController
    
    def new_form
        render("directors_templates/new_form_template.html.erb")   
    end
    
    def create_row
        new_director = Director.new
        new_director.name = params["name"]
        new_director.bio = params["bio"]
        new_director.dob = params["dob"]
        new_director.image_url = params["image_url"]
        new_director.save
        @directors_count = Director.all.count
        redirect_to("/directors")
        # render("pictures_templates/create_row_template.html.erb")    
    end
    
    def index
        @directors = Director.all
        render("directors_templates/index_template.html.erb")    
    end
    
    def show
        @director = Director.find(params["id"])
        render("directors_templates/show_template.html.erb")    
    end

    def edit_form
        @director = Director.find(params["id"])
        render("directors_templates/edit_form_template.html.erb")    
    end    
    def update_row
        @director = Director.find(params["id"])
        @director.name = params["name"]
        @director.bio = params["bio"]
        @director.dob = params["dob"]
        @director.image_url = params["image_url"]
        @director.save
        redirect_to("/directors/" + params["id"])
        # render("pictures_templates/update_row_template.html.erb")    
    end
    
    def destroy_row
        Director.find(params["id"]).destroy
        @director_count = Director.all.count
        redirect_to("/directors")
        # render("pictures_templates/destroy_row_template.html.erb")    
    end    

    
end