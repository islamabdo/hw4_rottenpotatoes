class AddDirectorToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :dir, :string
  end
end
