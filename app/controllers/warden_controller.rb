class WardenController < ApplicationController
  def index
  end
end


#create person instance variable: @person

controller: generate controller Persons
#in routes:   resources :persons

def new # refers to making new person to send to model
end

<%= form_for :person do |p| %>
    <p>
    <%= p.label :title %><br>
    <%= p.text_field :title %>
    </p>
    
    <p>
    <%= p.label :text %><br>
    <%= p.text_area :text %>
    </p>
    
    <p>
    <%= p.submit %>
    </p>
    <% end %>

class name: Persons
resources :persons
