class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :nom
      t.text :description

      t.timestamps
    end
  end
end
