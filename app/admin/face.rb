ActiveAdmin.register Face do
  permit_params :name, :description, :image

  form do |f|
    f.inputs "Project Details" do
      f.input :name
      f.input :description
      f.input :image, :as => :file, :required => false
    end

    f.actions
  end

  show do |ad|
      attributes_table do
        row :name
        row :description
        row :image do
          image_tag(ad.image.url)
        end
      end
    end
end
