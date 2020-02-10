class CreateDeclarations < ActiveRecord::Migration[6.0]
  def change
    create_table :declarations do |t|
      t.string :nom
      t.string :prenom
      t.string :date_de_naissance
      t.string :heure_de_naissance
      t.string :lieu_de_naissance
      t.string :sexe
      t.string :nom_pere
      t.string :adresse_pere
      t.string :date_de_naissance_pere
      t.string :lieu_de_naissnce_pere
      t.string :profession_pere
      t.string :telephone_pere
      t.string :nationalite_pere
      t.string :coutume_pere
      t.string :piece_pere
      t.string :nom_mere
      t.string :adresse_mere
      t.string :date_de_naissance_mere
      t.string :lieu_de_naissnce_mere
      t.string :profession_mere
      t.string :telephone_mere
      t.string :nationalite_mere
      t.string :coutume_mere
      t.string :piece_mere

      t.timestamps
    end
  end
end
