require 'test_helper'

class DeclarationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @declaration = declarations(:one)
  end

  test "should get index" do
    get declarations_url
    assert_response :success
  end

  test "should get new" do
    get new_declaration_url
    assert_response :success
  end

  test "should create declaration" do
    assert_difference('Declaration.count') do
      post declarations_url, params: { declaration: { adresse_mere: @declaration.adresse_mere, adresse_pere: @declaration.adresse_pere, coutume_mere: @declaration.coutume_mere, coutume_pere: @declaration.coutume_pere, date_de_naissance: @declaration.date_de_naissance, date_de_naissance_mere: @declaration.date_de_naissance_mere, date_de_naissance_pere: @declaration.date_de_naissance_pere, heure_de_naissance: @declaration.heure_de_naissance, lieu_de_naissance: @declaration.lieu_de_naissance, lieu_de_naissnce_mere: @declaration.lieu_de_naissnce_mere, lieu_de_naissnce_pere: @declaration.lieu_de_naissnce_pere, nationalite_mere: @declaration.nationalite_mere, nationalite_pere: @declaration.nationalite_pere, nom: @declaration.nom, nom_mere: @declaration.nom_mere, nom_pere: @declaration.nom_pere, piece_mere: @declaration.piece_mere, piece_pere: @declaration.piece_pere, prenom: @declaration.prenom, profession_mere: @declaration.profession_mere, profession_pere: @declaration.profession_pere, sexe: @declaration.sexe, telephone_mere: @declaration.telephone_mere, telephone_pere: @declaration.telephone_pere } }
    end

    assert_redirected_to declaration_url(Declaration.last)
  end

  test "should show declaration" do
    get declaration_url(@declaration)
    assert_response :success
  end

  test "should get edit" do
    get edit_declaration_url(@declaration)
    assert_response :success
  end

  test "should update declaration" do
    patch declaration_url(@declaration), params: { declaration: { adresse_mere: @declaration.adresse_mere, adresse_pere: @declaration.adresse_pere, coutume_mere: @declaration.coutume_mere, coutume_pere: @declaration.coutume_pere, date_de_naissance: @declaration.date_de_naissance, date_de_naissance_mere: @declaration.date_de_naissance_mere, date_de_naissance_pere: @declaration.date_de_naissance_pere, heure_de_naissance: @declaration.heure_de_naissance, lieu_de_naissance: @declaration.lieu_de_naissance, lieu_de_naissnce_mere: @declaration.lieu_de_naissnce_mere, lieu_de_naissnce_pere: @declaration.lieu_de_naissnce_pere, nationalite_mere: @declaration.nationalite_mere, nationalite_pere: @declaration.nationalite_pere, nom: @declaration.nom, nom_mere: @declaration.nom_mere, nom_pere: @declaration.nom_pere, piece_mere: @declaration.piece_mere, piece_pere: @declaration.piece_pere, prenom: @declaration.prenom, profession_mere: @declaration.profession_mere, profession_pere: @declaration.profession_pere, sexe: @declaration.sexe, telephone_mere: @declaration.telephone_mere, telephone_pere: @declaration.telephone_pere } }
    assert_redirected_to declaration_url(@declaration)
  end

  test "should destroy declaration" do
    assert_difference('Declaration.count', -1) do
      delete declaration_url(@declaration)
    end

    assert_redirected_to declarations_url
  end
end
