<?php

namespace App\Models\Patients;

use Illuminate\Database\Eloquent\Model;

class tdata_malade extends Model
{
    //
    protected $fillable = [
        "nom_maladie","nom_categoriemaladie","plainte","historique","antecedent","complementanamnese","examenphysique",
        "diagnostiquePres","dateDetailCons","TypeConsultation",
        'dateConsultation',"matricule_medecin","noms_medecin","sexe_medecin","datenaissance_medecin",
        "lieunaissnce_medecin","provinceOrigine_medecin","etatcivil_medecin",
        "contact_medecin","mail_medecin","grade_medecin","fonction_medecin","specialite_medecin",
        "Categorie_medecin","niveauEtude_medecin","anneeFinEtude_medecin","Ecole_medecin",
        "Poids","Taille","TA","Temperature","FC","FR","Oxygene",
        "dateTriage","dateMouvement","numroBon","Statut","dateSortieMvt","motifSortieMvt",
        "Typemouvement","noms","contact","mail","Categorie","photo","nomAvenue",
        "nomQuartier","nomCommune","nomVille","nomProvince",
        "nomPays","sexe_malade","dateNaissance_malade","etatcivil_malade",
        "numeroMaison_malade","fonction_malade","personneRef_malade","fonctioPersRef_malade",
        "contactPersRef_malade","organisation_malade","numeroCarte_malade",
        "dateExpiration_malade","PrixCons",'age_malade',"exames_labo","prescription_medicaments",
        "maladie_chronique","hopital"
    ];
}
