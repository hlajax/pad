require "application_system_test_case"

class DeclarationsTest < ApplicationSystemTestCase
  setup do
    @declaration = declarations(:one)
  end

  test "visiting the index" do
    visit declarations_url
    assert_selector "h1", text: "Declarations"
  end

  test "creating a Declaration" do
    visit declarations_url
    click_on "New Declaration"

    fill_in "Adresse mere", with: @declaration.adresse_mere
    fill_in "Adresse pere", with: @declaration.adresse_pere
    fill_in "Coutume mere", with: @declaration.coutume_mere
    fill_in "Coutume pere", with: @declaration.coutume_pere
    fill_in "Date de naissance", with: @declaration.date_de_naissance
    fill_in "Date de naissance mere", with: @declaration.date_de_naissance_mere
    fill_in "Date de naissance pere", with: @declaration.date_de_naissance_pere
    fill_in "Heure de naissance", with: @declaration.heure_de_naissance
    fill_in "Lieu de naissance", with: @declaration.lieu_de_naissance
    fill_in "Lieu de naissnce mere", with: @declaration.lieu_de_naissnce_mere
    fill_in "Lieu de naissnce pere", with: @declaration.lieu_de_naissnce_pere
    fill_in "Nationalite mere", with: @declaration.nationalite_mere
    fill_in "Nationalite pere", with: @declaration.nationalite_pere
    fill_in "Nom", with: @declaration.nom
    fill_in "Nom mere", with: @declaration.nom_mere
    fill_in "Nom pere", with: @declaration.nom_pere
    fill_in "Piece mere", with: @declaration.piece_mere
    fill_in "Piece pere", with: @declaration.piece_pere
    fill_in "Prenom", with: @declaration.prenom
    fill_in "Profession mere", with: @declaration.profession_mere
    fill_in "Profession pere", with: @declaration.profession_pere
    fill_in "Sexe", with: @declaration.sexe
    fill_in "Telephone mere", with: @declaration.telephone_mere
    fill_in "Telephone pere", with: @declaration.telephone_pere
    click_on "Create Declaration"

    assert_text "Declaration was successfully created"
    click_on "Back"
  end

  test "updating a Declaration" do
    visit declarations_url
    click_on "Edit", match: :first

    fill_in "Adresse mere", with: @declaration.adresse_mere
    fill_in "Adresse pere", with: @declaration.adresse_pere
    fill_in "Coutume mere", with: @declaration.coutume_mere
    fill_in "Coutume pere", with: @declaration.coutume_pere
    fill_in "Date de naissance", with: @declaration.date_de_naissance
    fill_in "Date de naissance mere", with: @declaration.date_de_naissance_mere
    fill_in "Date de naissance pere", with: @declaration.date_de_naissance_pere
    fill_in "Heure de naissance", with: @declaration.heure_de_naissance
    fill_in "Lieu de naissance", with: @declaration.lieu_de_naissance
    fill_in "Lieu de naissnce mere", with: @declaration.lieu_de_naissnce_mere
    fill_in "Lieu de naissnce pere", with: @declaration.lieu_de_naissnce_pere
    fill_in "Nationalite mere", with: @declaration.nationalite_mere
    fill_in "Nationalite pere", with: @declaration.nationalite_pere
    fill_in "Nom", with: @declaration.nom
    fill_in "Nom mere", with: @declaration.nom_mere
    fill_in "Nom pere", with: @declaration.nom_pere
    fill_in "Piece mere", with: @declaration.piece_mere
    fill_in "Piece pere", with: @declaration.piece_pere
    fill_in "Prenom", with: @declaration.prenom
    fill_in "Profession mere", with: @declaration.profession_mere
    fill_in "Profession pere", with: @declaration.profession_pere
    fill_in "Sexe", with: @declaration.sexe
    fill_in "Telephone mere", with: @declaration.telephone_mere
    fill_in "Telephone pere", with: @declaration.telephone_pere
    click_on "Update Declaration"

    assert_text "Declaration was successfully updated"
    click_on "Back"
  end

  test "destroying a Declaration" do
    visit declarations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Declaration was successfully destroyed"
  end
end
