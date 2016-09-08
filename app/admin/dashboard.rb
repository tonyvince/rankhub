ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
         panel "Users" do
           ul do
             User.all.map do |user|
               li link_to(user.name, admin_user_path(user))
             end
           end
         end
       end

       column do
         panel "Info" do
           "Welcome to admin dashboard"
         end
       end
     end
  end # content
end