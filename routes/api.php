<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// use App\Http\Controllers\Patients\RvdMaladeController;



/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::group(['namespace'   =>  "Role"], function(){
    Route::get("fetch_role", 'RoleController@index');
    Route::get("fetch_single_role/{id}", 'RoleController@edit');
    Route::get("delete_role/{id}", 'RoleController@destroy');
    Route::post("insert_role", 'RoleController@store');
});

Route::group(['namespace'   =>  "User"], function(){
    Route::get("fetch_user", 'UserController@index');
    Route::get("fetch_user_all", 'UserController@fetch_user_all');
    
    Route::get("fetch_single_user/{id}", 'UserController@edit');
    Route::get("delete_user/{id}", 'UserController@destroy');
    Route::post("insert_user", 'UserController@store');
    Route::post("change_pwd_user", 'UserController@ChangePassword');
    Route::post("change_role_user", 'UserController@ChangeRole');

    Route::post("insertion_user", 'UserController@insert_user');

    // envoie de mail
    Route::post("send_mail", 'SendMailController@send_mail');
    // imprimmer sa carte 
    Route::get('print_bill','UserController@printBill');

    Route::post('edit_photo','UserController@editPhoto');

    Route::get("showUser/{id}", 'UserController@showUser');

    //modifier son mot de passe
    Route::post("ChangeMyPasswordSecure", 'UserController@ChangeMyPasswordSecure');

    Route::get("fetch_user_ceo", 'UserController@fetch_user_ceo');

    Route::get("checkEtat_compte/{id}/{etat}", 'UserController@checkEtat_Compte');

    

    
    
});

Route::group(['namespace'   =>  "Site"], function(){
    Route::get("fetch_site", 'SiteController@index');
    Route::get("fetch_single_site/{id}", 'SiteController@edit');
    Route::get("delete_site/{id}", 'SiteController@destroy');
    Route::post("insert_site", 'SiteController@store');
   
    Route::post('edit_photo_site','SiteController@editPhoto');

});

Route::group(['namespace'   =>  "Basic"], function(){
    Route::get("fetch_basic", 'BasicController@index');
    Route::get("fetch_single_basic/{id}", 'BasicController@edit');
    Route::get("delete_basic/{id}", 'BasicController@destroy');
    Route::post("insert_basic", 'BasicController@store');

});

Route::group(['namespace'   =>  "Service"], function(){
    Route::get("fetch_service", 'ServiceController@index');
    Route::get("fetch_single_service/{id}", 'ServiceController@edit');
    Route::get("delete_service/{id}", 'ServiceController@destroy');
    Route::post("insert_service", 'ServiceController@store');

});

Route::group(['namespace'   =>  "Category"], function(){
    Route::get("fetch_category_article", 'CategoryArticleController@index');
    Route::get("fetch_single_category_article/{id}", 'CategoryArticleController@edit');
    Route::get("delete_category_article/{id}", 'CategoryArticleController@destroy');
    Route::post("insert_category_article", 'CategoryArticleController@store');
    Route::get("fetchCategoryArticle", 'CategoryArticleController@fetchCategoryArticle');
    
});

Route::group(['namespace'   =>  "Blog"], function(){
    Route::get("fetch_blog", 'BlogController@index');
    Route::get("fetch_single_blog/{id}", 'BlogController@edit');
    Route::get("delete_blog/{id}", 'BlogController@destroy');

    Route::get("checkEtat_blog/{id}/{etat}", 'BlogController@checkEtat_blog');
    Route::post("insert_blog", 'BlogController@insertData');
    Route::post("update_blog", 'BlogController@updateData');

});


Route::group(['namespace'   =>  "Partenaire"], function(){
    Route::get("fetch_partenaire", 'PartenaireController@index');
    Route::get("fetch_single_partenaire/{id}", 'PartenaireController@edit');
    Route::get("delete_partenaire/{id}", 'PartenaireController@destroy');
    Route::post("insert_partenaire", 'PartenaireController@insertData');
    Route::post("update_partenaire", 'PartenaireController@updateData');

});

Route::group(['namespace'   =>  "Galery"], function(){
    Route::get("fetch_galery", 'GaleryController@index');
    Route::get("fetch_single_galery/{id}", 'GaleryController@edit');
    Route::get("delete_galery/{id}", 'GaleryController@destroy');
    Route::post("insert_galery", 'GaleryController@insertData');
    Route::post("update_galery", 'GaleryController@updateData');

});

Route::group(['namespace'   =>  "Video"], function(){
    Route::get("fetch_video", 'VideoController@index');
    Route::get("fetch_single_video/{id}", 'VideoController@edit');
    Route::get("delete_video/{id}", 'VideoController@destroy');
    Route::post("insert_video", 'VideoController@store');

});

Route::group(['namespace'   =>  "Team"], function(){
    //team 
    Route::get("fetch_team", 'TeamController@index');
    Route::get("fetch_single_team/{id}", 'TeamController@edit');
    Route::get("delete_team/{id}", 'TeamController@destroy');
    Route::post("insert_team", 'TeamController@insertData');
    Route::post("update_team", 'TeamController@updateData');
    Route::get("validationTeam/{id}/{etat}", 'TeamController@validationTeam');
    
});

Route::group(['namespace'   =>  "ContactInfo"], function(){
    Route::get("fetch_contact_onfo", 'ContactInfoController@index');
    Route::get("fetch_single_contact_onfo/{id}", 'ContactInfoController@edit');
    Route::get("delete_contact_onfo/{id}", 'ContactInfoController@destroy');
    Route::post("insert_contact_onfo", 'ContactInfoController@store');

});

Route::group(['namespace'   =>  "Carousel"], function(){
    Route::get("fetch_carousel", 'CarouselController@index');
    Route::get("fetch_single_carousel/{id}", 'CarouselController@edit');
    Route::get("delete_carousel/{id}", 'CarouselController@destroy');
    Route::post("insert_carousel", 'CarouselController@insertData');
    Route::post("update_carousel", 'CarouselController@updateData');
    
});

Route::group(['namespace'   =>  "Temoignage"], function(){
    Route::get("fetch_temoignage", 'TemoignageController@index');
    Route::get("fetch_single_temoignage/{id}", 'TemoignageController@edit');
    Route::get("delete_temoignage/{id}", 'TemoignageController@destroy');
    Route::post("insert_temoignage", 'TemoignageController@insertData');
    Route::post("update_temoignage", 'TemoignageController@updateData');

    
});

Route::group(['namespace'   =>  "Valeur"], function(){
    Route::get("fetch_valeur", 'ValeurController@index');
    Route::get("fetch_single_valeur/{id}", 'ValeurController@edit');
    Route::get("delete_valeur/{id}", 'ValeurController@destroy');
    Route::post("insert_valeur", 'ValeurController@insertData');
    Route::post("update_valeur", 'ValeurController@updateData');

    
});

Route::group(['namespace'   =>  "Choix"], function(){
    Route::get("fetch_choix", 'ChoixController@index');
    Route::get("fetch_single_choix/{id}", 'ChoixController@edit');
    Route::get("delete_choix/{id}", 'ChoixController@destroy');
    Route::post("insert_choix", 'ChoixController@insertData');
    Route::post("update_choix", 'ChoixController@updateData');
    
});

Route::group(['namespace'   =>  "Decision"], function(){
    Route::get("fetch_decision", 'DecisionController@index');
    Route::get("fetch_single_decision/{id}", 'DecisionController@edit');
    Route::get("delete_decision/{id}", 'DecisionController@destroy');
    Route::post("insert_decision", 'DecisionController@insertData');
    Route::post("update_decision", 'DecisionController@updateData');
    
});

Route::group(['namespace'   =>  "Avantage"], function(){
    Route::get("fetch_avantage", 'AvantageController@index');
    Route::get("fetch_single_avantage/{id}", 'AvantageController@edit');
    Route::get("delete_avantage/{id}", 'AvantageController@destroy');
    Route::post("insert_avantage", 'AvantageController@insertData');
    Route::post("update_avantage", 'AvantageController@updateData');
    
});

Route::group(['namespace'   =>  "ServiceEntrep"], function(){
    Route::get("fetch_valeur_service", 'ServiceEntrepController@index');
    Route::get("fetch_single_valeur_service/{id}", 'ServiceEntrepController@edit');
    Route::get("delete_valeur_service/{id}", 'ServiceEntrepController@destroy');
    Route::post("insert_valeur_service", 'ServiceEntrepController@insertData');
    Route::post("update_valeur_service", 'ServiceEntrepController@updateData');
    Route::get("fetch_ours_services", 'ServiceEntrepController@fetch_All_services');

    
});

Route::group(['namespace'   =>  "RoleService"], function(){
    Route::get("fetch_role_service", 'RoleServiceController@index');
    Route::get("fetch_single_role_service/{id}", 'RoleServiceController@edit');
    Route::get("delete_role_service/{id}", 'RoleServiceController@destroy');
    Route::post("insert_role_service", 'RoleServiceController@insertData');
    Route::post("update_role_service", 'RoleServiceController@updateData');
    
});

Route::group(['namespace'   =>  "SouServiceEntrep"], function(){
    Route::get("fetch_sous_service", 'SouServiceEntrepController@index');
    Route::get("fetch_single_sous_service/{id}", 'SouServiceEntrepController@edit');
    Route::get("delete_sous_service/{id}", 'SouServiceEntrepController@destroy');
    Route::post("insert_sous_service", 'SouServiceEntrepController@insertData');
    Route::post("update_sous_service", 'SouServiceEntrepController@updateData');
    Route::get("fetch_ours_sous_services", 'SouServiceEntrepController@fetch_All_Sous_Services');
    
});







/*
*les scripts commencent
*=====================
*pnud management project
*------------------------
*/
Route::group(['namespace'   =>  "Backend"], function(){

    //mot de la semaine
    Route::get("fetch_week", 'SwotController@indexMotSemaine');
    Route::get("fetch_single_week/{id}", 'SwotController@editMotSemaine');
    Route::get("delete_week/{id}", 'SwotController@destroyMotSemaine');
    Route::post("insert_week", 'SwotController@storeMotSemaine');
    Route::get("fetch_latest_week", 'SwotController@showLatestweek');
    Route::get("fetch_latest_users", 'SwotController@getListUsersLatest');

    //fin mot de la semaine


    Route::get("fetch_pays", 'PaysController@index');
    Route::get("fetch_single_pays/{id}", 'PaysController@edit');
    Route::get("delete_pays/{id}", 'PaysController@destroy');
    Route::post("insert_pays", 'PaysController@store');
    Route::get("fetch_pays_2", 'PaysController@fetch_pays_2');
    Route::get("destroyMessage/{id}", 'PaysController@destroyMessage');
    

    //provinces
    Route::get("fetch_province", 'ProvinceController@index');
    Route::get("fetch_single_province/{id}", 'ProvinceController@edit');
    Route::get("delete_province/{id}", 'ProvinceController@destroy');
    Route::post("insert_province", 'ProvinceController@store');
    Route::get("fetch_province_2", 'ProvinceController@fetch_province_2');
    Route::get("fetch_province_tug_pays/{idPays}", 'ProvinceController@fetch_province_tug_pays');



    //Ville
    Route::get("fetch_ville", 'VilleController@index');
    Route::get("fetch_single_ville/{id}", 'VilleController@edit');
    Route::get("delete_ville/{id}", 'VilleController@destroy');
    Route::post("insert_ville", 'VilleController@store');
    Route::get("fetch_ville_tug_pays/{idProvince}", 'VilleController@fetch_ville_tug_pays');
    

    //Commune
    Route::get("fetch_commune", 'CommuneController@index');
    Route::get("fetch_single_commune/{id}", 'CommuneController@edit');
    Route::get("delete_commune/{id}", 'CommuneController@destroy');
    Route::post("insert_commune", 'CommuneController@store');
    Route::get("fetch_commune_tug_ville/{idVille}", 'CommuneController@fetch_commune_tug_ville');

    //Quartier
    Route::get("fetch_quartier", 'QuartierController@index');
    Route::get("fetch_single_quartier/{id}", 'QuartierController@edit');
    Route::get("delete_quartier/{id}", 'QuartierController@destroy');
    Route::post("insert_quartier", 'QuartierController@store');
    Route::get("fetch_quartier_tug_commune/{idVille}", 'QuartierController@fetch_quartier_tug_commune');

    //Avenue
    Route::get("fetch_avenue", 'AvenueController@index');
    Route::get("fetch_single_avenue/{id}", 'AvenueController@edit');
    Route::get("delete_avenue/{id}", 'AvenueController@destroy');
    Route::post("insert_avenue", 'AvenueController@store');
    Route::get("getAvenueTug/{idQuartier}", 'AvenueController@getAvenueTug');
    


    

    //secteur
    Route::get("fetch_secteur", 'SecteurController@index');
    Route::get("fetch_single_secteur/{id}", 'SecteurController@edit');
    Route::get("delete_secteur/{id}", 'SecteurController@destroy');
    Route::post("insert_secteur", 'SecteurController@store');
    Route::get("fetch_secteur_2", 'SecteurController@fetch_secteur_2');

    //forme_juridiques
    Route::get("fetch_forme_juridiques", 'FormeJuridiqueController@index');
    Route::get("fetch_single_forme_juridiques/{id}", 'FormeJuridiqueController@edit');
    Route::get("delete_forme_juridiques/{id}", 'FormeJuridiqueController@destroy');
    Route::post("insert_forme_juridiques", 'FormeJuridiqueController@store');
    Route::get("fetch_forme_juridiques_2", 'FormeJuridiqueController@fetch_forme_juridiques_2');

    //entreprises
    Route::get("fetch_entreprise", 'EntrepriseController@index');
    Route::get("fetch_single_entreprise/{id}", 'EntrepriseController@edit');
    Route::get("delete_entreprise/{id}", 'EntrepriseController@destroy');
    Route::post("insert_entreprise", 'EntrepriseController@store');
    Route::get("fetch_entreprise_2", 'EntrepriseController@fetch_entreprise_2');

    Route::get("checkEtat_entreprise/{id}/{etat}", 'EntrepriseController@checkEtat_entreprise');
    Route::get('get_project_infos/{slug}','EntrepriseController@getEntrepriseDetails');
    Route::post('add_pitch','EntrepriseController@AddPich');
    Route::post('add_busness_plan','EntrepriseController@AddBusnessPlan');

    //triage filtrage
    Route::get("fetch_entreprise_tug/{id}", 'EntrepriseController@fetch_entreprise_tug');
    


    //photoentreprise
    
    Route::get("fetch_photo_entreprise/{id_entrep}", 'EntrepriseController@getPhotoEntreprise');
    Route::post('add_photo_entreprise','EntrepriseController@AddPhotoEntreprise');
    Route::get("delete_photo_entreprise/{id}", 'EntrepriseController@destroyPhotoEntreprise');

    //videoentreprise
    Route::get("fetch_video_entreprise/{id_entrep}", 'EntrepriseController@getVideoEntreprise');
    Route::post("insert_video_entreprise", 'EntrepriseController@storeVideoEntreprise');
    Route::get("fetch_single_video_entreprise/{id_entrep}", 'EntrepriseController@editVideoEntreprise');
    Route::get("delete_video_entreprise/{id_entrep}", 'EntrepriseController@destroyVideoEntreprise');
    
    //canvas model
    Route::get("fetch_canvas_entreprise/{slug}", 'EntrepriseController@getCanvasEntreprise');
    Route::get("fetch_single_canvas_entreprise/{id_entrep}", 'EntrepriseController@editCanvasEntreprise');
    Route::post("insert_canvas_entreprise", 'EntrepriseController@storeCanvasEntreprise');
    Route::get("delete_canvas_entreprise/{id_entrep}", 'EntrepriseController@destroyCanvasEntreprise');

    //pour canvas correction
    Route::get("fetch_single_canvas_correction_entreprise/{id_entrep}", 'EntrepriseController@editCanvasCorrectionEntreprise');
    Route::post("insert_canvas_correction_entreprise", 'EntrepriseController@storeCanvasCorrectionEntreprise');
    Route::get("delete_canvas_correction_entreprise/{id_entrep}", 'EntrepriseController@destroyCanvasCorrectionEntreprise');

    //swot model
    Route::get("fetch_swot_entreprise/{slug}", 'EntrepriseController@getSwotEntreprise');
    Route::get("fetch_single_swot_entreprise/{id_entrep}", 'EntrepriseController@editSwotEntreprise');
    Route::post("insert_swot_entreprise", 'EntrepriseController@storeSwotEntreprise');
    Route::get("delete_swot_entreprise/{id_entrep}", 'EntrepriseController@destroySwotEntreprise');

    //pour swot correction
    Route::get("fetch_single_swot_correction_entreprise/{id_entrep}", 'EntrepriseController@editSwotCorrectionEntreprise');
    Route::post("insert_swot_correction_entreprise", 'EntrepriseController@storeSwotCorrectionEntreprise');
    Route::get("delete_swot_correction_entreprise/{id_entrep}", 'EntrepriseController@destroySwotCorrectionEntreprise');

    Route::get("fetch_filtre_menu_entreprise", 'EntrepriseController@getMenuFiltrage');
    //show ceo entreprise and filtre
    Route::get("fetch_ceo_entreprise", 'EntrepriseController@showCeoEntreprise');
    Route::get("getEntreprisePays/{idPays}", 'EntrepriseController@getEntreprisePays');
    Route::get("getEntreprisePprovince/{idPays}", 'EntrepriseController@getEntreprisePprovince');
    Route::get("getEntrepriseSecteur/{idsecteur}", 'EntrepriseController@getEntrepriseSecteur');
    Route::get("getEntrepriseForme/{idforme}", 'EntrepriseController@getEntrepriseForme');
    Route::get("getEntrepriseEdition/{idforme}", 'EntrepriseController@getEntrepriseEdition');
    //document
    Route::get('get_project_infos_document/{slug}','EntrepriseController@getEntrepriseDetailsDocument');

    // impression de la liste
    Route::get('pdf_entreprise_morale','SwotController@makepdfEntrepriseMorale');
    Route::get('pdf_liste_entreprise_morale','SwotController@makepdfListeEntrepriseMorale');

    //statistique users
    Route::get('stat_users','SwotController@stat_users');
    Route::get('stat_users_sexe_ceo','SwotController@stat_users_sexe_ceo');
    Route::get('pnudShowLineChartAssuranceAuto','SwotController@pnudShowLineChartAssuranceAuto');
    Route::get('stat_blogs','SwotController@stat_blogs');
    
    Route::get('statEntreprise','SwotController@statEntreprise');
    Route::get('statEntrepriseSecteur','SwotController@statEntrepriseSecteur');
    
    Route::get("showCountDashbord", 'SwotController@showCountDashbord');
    Route::get('statEntreprisePrint','SwotController@statEntreprisePrint');

    //debit
    Route::get("showCountDashbord_tug/{id}", 'SwotController@showCountDashbord_tug');
    Route::get('fetchMessagesTug/{user_id}', 'SwotController@fetchMessagesTug');
    
    Route::get('/get_all_users', 'SwotController@users');


    //territoire
    Route::get("fetch_territoire", 'TerritoireController@index');
    Route::get("fetch_single_territoire/{id}", 'TerritoireController@edit');
    Route::get("delete_territoire/{id}", 'TerritoireController@destroy');
    Route::post("insert_territoire", 'TerritoireController@store');
    Route::get("fetch_territoire_2", 'TerritoireController@fetch_territoire_2');

    //texto sms
    Route::get("fetch_texto", 'TextoController@index');
    Route::get("fetch_single_texto/{id}", 'TextoController@edit');
    Route::get("delete_texto/{id}", 'TextoController@destroy');
    Route::post("insert_texto", 'TextoController@store');
    
    Route::get("checkEtat_texto/{id}/{phone}/{etat}", 'TextoController@checkEtat_texto');
    


    
});

Route::group(['namespace'   =>  "Patients"], function(){
    Route::get("fetch_rdv_malade", 'RvdMaladeController@index');
    Route::get("showRDV_Carte/{refCarte}", 'RvdMaladeController@showRDV_Carte');
    Route::get("fetch_single_rdv_malade/{id}", 'RvdMaladeController@edit');    
    Route::post("insert_rdv_malade", 'RvdMaladeController@insertData');
    Route::post("update_rdv_malade", 'RvdMaladeController@updateData');
    Route::get("delete_rdv_malade/{id}", 'RvdMaladeController@destroy'); 
    
    
    Route::get("fetch_carte_malade", 'CarteController@index');
    Route::get("fetch_single_carte_malade/{id}", 'CarteController@edit');    
    Route::post("insert_carte_malade", 'CarteController@insertData');
    Route::post("update_carte_malade", 'CarteController@updateData');
    Route::get("delete_carte_malade/{id}", 'CarteController@destroy'); 


    Route::get("fetch_data_malade", 'DataMaladeController@index');
    Route::get("showData_Carte/{refCarte}", 'DataMaladeController@showData_Carte');
    Route::get("fetch_single_data_malade/{id}", 'DataMaladeController@edit');    
    Route::post("insert_data_malade", 'DataMaladeController@insertData');
    Route::post("update_data_malade", 'DataMaladeController@updateData');
    Route::get("delete_data_malade/{id}", 'DataMaladeController@destroy'); 


    
});

/*
*les scripts commencent
*=====================
*pnud management project
*------------------------
*/



