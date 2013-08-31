ActiveAdmin.register Pose do
  menu priority: 1
  actions :all, except: [:show]

  form do |f|
    f.inputs do
      f.input :image
      f.input :gender, :as => :radio, :collection => { "Male" => "male", "Female" => "female" }
      f.input :nude
    end
    f.actions
  end

  index do
    selectable_column
    column "Image" do |pose|
      "<img src=\"#{pose.image.admin.url}\" />".html_safe
    end
    column :gender
    column :nude do |pose|
      pose.nude?? "yes" : "no"
    end
    default_actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
