class AddAvailableToStrain < ActiveRecord::Migration[6.0]
  def change
    add_column :strains, :available, :boolean
  end
end
