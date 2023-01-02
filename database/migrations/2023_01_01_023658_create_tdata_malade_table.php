<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTdataMaladeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tdata_malade', function (Blueprint $table) {
            $table->id();
            $table->text('nom_maladie');
            $table->text('nom_categoriemaladie');
            $table->text('plainte');
            $table->text('historique');
            $table->text('antecedent');
            $table->text('complementanamnese');
            $table->text('examenphysique');
            $table->text('diagnostiquePres');
            $table->string('TypeConsultation');
            $table->string('dateDetailCons');
            $table->string('dateConsultation');
            $table->string('matricule_medecin');
            $table->string('noms_medecin');
            $table->string('sexe_medecin');
            $table->string('datenaissance_medecin');
            $table->string('lieunaissnce_medecin');
            $table->string('provinceOrigine_medecin');
            $table->string('etatcivil_medecin');
            $table->string('contact_medecin');
            $table->string('mail_medecin');
            $table->string('grade_medecin');
            $table->string('fonction_medecin');
            $table->string('specialite_medecin');
            $table->string('Categorie_medecin');
            $table->string('niveauEtude_medecin');
            $table->string('anneeFinEtude_medecin');
            $table->string('Ecole_medecin');
            $table->string('photo_medecin');
            $table->string('Poids');
            $table->string('Taille');
            $table->string('TA');
            $table->string('Temperature');
            $table->string('FC');
            $table->string('FR');
            $table->string('Oxygene');
            $table->string('dateTriage');
            $table->string('dateMouvement');
            $table->string('numroBon');
            $table->string('Statut');
            $table->string('dateSortieMvt');
            $table->string('motifSortieMvt');
            $table->string('Typemouvement');
            $table->string('noms');
            $table->string('contact');
            $table->string('mail');
            $table->string('Categorie');
            $table->string('photo');
            $table->string('nomAvenue');
            $table->string('nomQuartier');
            $table->string('nomCommune');
            $table->string('nomVille');
            $table->string('nomProvince');
            $table->string('nomPays');
            $table->string('sexe_malade');
            $table->string('dateNaissance_malade');
            $table->string('etatcivil_malade');
            $table->string('numeroMaison_malade');
            $table->string('fonction_malade');
            $table->string('personneRef_malade');
            $table->string('fonctioPersRef_malade');
            $table->string('contactPersRef_malade');            
            $table->string('organisation_malade');
            $table->integer('numeroCarte_malade');
            $table->string('dateExpiration_malade');
            $table->string('age_malade');
            $table->string('exames_labo');
            $table->string('prescription_medicaments');
            $table->string('maladie_chronique');
            $table->string('hopital');
            $table->timestamps();
        });
    } 

   
    
    //"nom_maladie","nom_categoriemaladie","plainte","historique","antecedent","complementanamnese","examenphysique",
    //"diagnostiquePres","dateDetailCons","ttypeconsultation.designation as TypeConsultation",
    //'dateConsultation',"matricule_medecin","noms_medecin","sexe_medecin","datenaissance_medecin",
    //"lieunaissnce_medecin","provinceOrigine_medecin","etatcivil_medecin",
    //"contact_medecin","mail_medecin","grade_medecin","fonction_medecin","specialite_medecin",
    // "Categorie_medecin","niveauEtude_medecin","anneeFinEtude_medecin","Ecole_medecin","tmedecin.photo as photo_medecin",
    //"Poids","Taille","TA","Temperature","FC","FR","Oxygene",
    //"dateTriage","dateMouvement","numroBon","Statut","dateSortieMvt","motifSortieMvt",
    // "ttypemouvement_malade.designation as Typemouvement","noms","contact",
    // "mail","tcategorieclient.designation as Categorie","tclient.photo","nomAvenue",
    //"nomQuartier","nomCommune","nomVille","nomProvince",
    //"nomPays","sexe_malade","dateNaissance_malade","etatcivil_malade",
    //"numeroMaison_malade","fonction_malade","personneRef_malade","fonctioPersRef_malade",
    //"contactPersRef_malade","organisation_malade","numeroCarte_malade",
    //"dateExpiration_malade","PrixCons",'age_malade'







    

     //// "tdiagnosticdefinitif.id",'refdetailCons',"tdiagnosticdefinitif.refmaladie",
    //// "tdiagnosticdefinitif.author", "tdiagnosticdefinitif.created_at", "tdiagnosticdefinitif.updated_at",
    //"nom_maladie",
    // //        "refcategoriemaladie","nom_categoriemaladie","refEnteteCons","refTypeCons",
    //"plainte",
    //         "historique","antecedent","complementanamnese","examenphysique",
    //         "diagnostiquePres","dateDetailCons",
    ////"tdetailconsultation.author",
    ////         "tdetailconsultation.created_at","tdetailconsultation.updated_at",
    //"ttypeconsultation.designation as TypeConsultation",
    //// 'refDetailTriage','refMedecin',
    //'dateConsultation',
    //// "tenteteconsulter.author","tenteteconsulter.created_at","tenteteconsulter.updated_at",
    //"matricule_medecin","noms_medecin","sexe_medecin","datenaissance_medecin",
    //"lieunaissnce_medecin","provinceOrigine_medecin","etatcivil_medecin",
    //// "refAvenue_medecin",
    //"contact_medecin","mail_medecin","grade_medecin","fonction_medecin","specialite_medecin",
    // "Categorie_medecin","niveauEtude_medecin","anneeFinEtude_medecin","Ecole_medecin","tmedecin.photo as photo_medecin",
    //// "tmedecin.slug as slug_medecin","refEnteteTriage",
    //"Poids","Taille","TA","Temperature","FC","FR","Oxygene",
    //// "refMouvement",
    //"dateTriage",
    ////"refMalade","refTypeMouvement",
    //"dateMouvement","numroBon",
    // "Statut","dateSortieMvt","motifSortieMvt",
    ////"autoriseSortieMvt",
    // "ttypemouvement_malade.designation as Typemouvement","noms","contact",
    // "mail",
    ////"refAvenue","refCategieClient",
    //"tcategorieclient.designation as Categorie","tclient.photo",
    ////"tclient.slug",
    //"nomAvenue",
    ////"idCommune",
    //"nomQuartier",
    ////"idQuartier","idVille",
    //"nomCommune",
    ////"idProvince",
    //"nomVille",
    ////"idPays",
    //"nomProvince",
    //"nomPays","sexe_malade","dateNaissance_malade","etatcivil_malade",
    //"numeroMaison_malade","fonction_malade","personneRef_malade","fonctioPersRef_malade",
    //"contactPersRef_malade","organisation_malade","numeroCarte_malade",
    //"dateExpiration_malade","PrixCons")
    //->selectRaw('TIMESTAMPDIFF(YEAR, dateNaissance_malade, CURDATE()) as age_malade')

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tdata_malade');
    }
}
