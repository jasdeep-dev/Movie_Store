ActiveAdmin.register User do
     decorate_with UserDecorator
  index do
    selectable_column
    id_column
    column :email 
    column :image
    column :name
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end  


  filter :name
  filter :email
 
  action_item :new_movie,only: :index do
    link_to "New User", "#{Rails.application.secrets.url}/users/sign_up"
  end

end