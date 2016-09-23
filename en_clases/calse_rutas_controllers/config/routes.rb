Rails.application.routes.draw do


  # get 'patients/:id', to: 'patients#show'
  # resources :patients  # => resources es un metodo que mapea todos los verbos de CRUD

########################################
  # con recursos anidados seria asi: # y falta crear el controller para records

  # resources :patients do
  #   resources :records, only: [:index, :new, :create]
  # end
#   resources :records, only: [:show, :edit, :update, :destroy]
#
#  para diferenciar las acciones dependientes de padres, y las que no
#
# resources :patients do
#   resources :records, shallow: true #--> hace lo mismo que las lineas anteriores
# end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# GET /patients/17records/1/print
# GET /patients/17records/search
###############################################

  resources :patients do
    resources :records, shallow: true do
      member do # actua sobre un solo mienbro u objeto
        get :metodo1 # hay que definirlos abajo
        get :metodo5 # hay que definirlos abajo
      end
      collection do # actua sobre la clase
        get :metodo2 # hay que definirlos abajo
      end
    end
  end
  resources :photos, controller: 'images'  # para ser un path con controlador distinto

end


# POST
# PUT/PATCH
# DELETE /patients17
