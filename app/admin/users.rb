ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
permit_params :email, :password
filter :email, as: :select
#
index do
  column :id
  column :email
  column :member_since do |user|
    time_ago_in_words(user.created_at)
  end
  actions
end

form do |f|
  inputs 'Agregar un nuevo usuario' do
    input :email
    input :password
  end
  actions
end

# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
