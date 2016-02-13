class CreateFaces < ActiveRecord::Migration
  def change
    create_table :faces do |t|
      t.string :name
      t.text :description
    end

    add_attachment :faces, :image
  end
end
