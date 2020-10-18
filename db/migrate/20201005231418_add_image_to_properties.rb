class AddImageToProperties < ActiveRecord::Migration[6.0]
  def up
    add_attachment :properties, :avatar
  end

  def down
    remove_attachment :properties, :avatar
  end
end
