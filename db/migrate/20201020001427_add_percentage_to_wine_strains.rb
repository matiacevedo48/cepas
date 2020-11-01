class AddPercentageToWineStrains < ActiveRecord::Migration[5.2]
  def change
    add_column :wine_strains, :percentage, :float
  end
end
