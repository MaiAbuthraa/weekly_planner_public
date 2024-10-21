class AddCategoryToTask < ActiveRecord::Migration[7.2]
  def change
    add_reference :tasks, :category
  end
end
