<?php

namespace App\Http\Controllers\Patients;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Patients\{tdata_malade};
use App\Traits\{GlobalMethod,Slug};
use DB;
class DataMaladeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    use GlobalMethod, Slug;

    public function index(Request $request)
    {
        //
        $data = DB::table("tdata_malade")
        ->select("nom_maladie","nom_categoriemaladie","plainte","historique","antecedent","complementanamnese","examenphysique",
        "diagnostiquePres","dateDetailCons","TypeConsultation",
        'dateConsultation',"matricule_medecin","noms_medecin","sexe_medecin","datenaissance_medecin",
        "lieunaissnce_medecin","provinceOrigine_medecin","etatcivil_medecin",
        "contact_medecin","mail_medecin","grade_medecin","fonction_medecin","specialite_medecin",
        "Categorie_medecin","niveauEtude_medecin","anneeFinEtude_medecin","Ecole_medecin","photo_medecin",
        "Poids","Taille","TA","Temperature","FC","FR","Oxygene",
        "dateTriage","dateMouvement","numroBon","Statut","dateSortieMvt","motifSortieMvt",
        "Typemouvement","noms","contact","mail","Categorie","photo","nomAvenue",
        "nomQuartier","nomCommune","nomVille","nomProvince",
        "nomPays","sexe_malade","dateNaissance_malade","etatcivil_malade",
        "numeroMaison_malade","fonction_malade","personneRef_malade","fonctioPersRef_malade",
        "contactPersRef_malade","organisation_malade","numeroCarte_malade",
        "dateExpiration_malade","PrixCons",'age_malade',"exames_labo","prescription_medicaments",
        "maladie_chronique","hopital");

        if (!is_null($request->get('query'))) {
            # code...
            $query = $this->Gquery($request);

            $data->where('noms', 'like', '%'.$query.'%')
            ->orWhere('numeroCarte_malade', 'like', '%'.$query.'%')
            ->orderBy("tdata_malade.dateDetailCons", "desc");

            return $this->apiData($data->paginate(3));
           

        }
        $data->orderBy("tdata_malade.dateDetailCons", "desc");
        return $this->apiData($data->paginate(3));
    }

    public function showData_Carte(Request $request,$refCarte)
    {
        //
        $data = DB::table("tdata_malade")
        ->select("nom_maladie","nom_categoriemaladie","plainte","historique","antecedent","complementanamnese","examenphysique",
        "diagnostiquePres","dateDetailCons","TypeConsultation",
        'dateConsultation',"matricule_medecin","noms_medecin","sexe_medecin","datenaissance_medecin",
        "lieunaissnce_medecin","provinceOrigine_medecin","etatcivil_medecin",
        "contact_medecin","mail_medecin","grade_medecin","fonction_medecin","specialite_medecin",
        "Categorie_medecin","niveauEtude_medecin","anneeFinEtude_medecin","Ecole_medecin","photo_medecin",
        "Poids","Taille","TA","Temperature","FC","FR","Oxygene",
        "dateTriage","dateMouvement","numroBon","Statut","dateSortieMvt","motifSortieMvt",
        "Typemouvement","noms","contact","mail","Categorie","photo","nomAvenue",
        "nomQuartier","nomCommune","nomVille","nomProvince",
        "nomPays","sexe_malade","dateNaissance_malade","etatcivil_malade",
        "numeroMaison_malade","fonction_malade","personneRef_malade","fonctioPersRef_malade",
        "contactPersRef_malade","organisation_malade","numeroCarte_malade",
        "dateExpiration_malade","PrixCons",'age_malade',"exames_labo","prescription_medicaments",
        "maladie_chronique","hopital");

        if (!is_null($request->get('query'))) {
            # code...
            $query = $this->Gquery($request);

            $data->where([
                ['noms', 'like', '%'.$query.'%'],
                ['numeroCarte_malade', $refCarte]
            ])
            ->orderBy("tdata_malade.dateDetailCons", "desc");

            return $this->apiData($data->paginate(3));
           

        }
        $data->where('numeroCarte_malade', $refCarte)
        ->orderBy("tdata_malade.dateDetailCons", "desc");
        return $this->apiData($data->paginate(3));
    }

   

   

    function insertData(Request $request)
    {

        if (!is_null($request->image)) 
        {
            $formData = json_decode($_POST['data']);
            $imageName = time().'.'.$request->image->getClientOriginalExtension();

            $request->image->move(public_path('/fichier'), $imageName);
            tdata_malade::create([
                "nom_maladie"=>$formData->nom_maladie,
                "nom_categoriemaladie"=>$formData->nom_categoriemaladie,
                "plainte"=>$formData->plainte,
                "historique"=>$formData->historique,
                "antecedent"=>$formData->antecedent,
                "complementanamnese"=>$formData->complementanamnese,
                "examenphysique"=>$formData->examenphysique,
                "diagnostiquePres"=>$formData->diagnostiquePres,
                "dateDetailCons"=>$formData->dateDetailCons,
                "TypeConsultation"=>$formData->TypeConsultation,
                'dateConsultation'=>$formData->dateConsultation,
                "matricule_medecin"=>$formData->matricule_medecin,
                "noms_medecin"=>$formData->noms_medecin,
                "sexe_medecin"=>$formData->sexe_medecin,
                "datenaissance_medecin"=>$formData->datenaissance_medecin,
                "lieunaissnce_medecin"=>$formData->lieunaissnce_medecin,
                "provinceOrigine_medecin"=>$formData->provinceOrigine_medecin,
                "etatcivil_medecin"=>$formData->etatcivil_medecin,
                "contact_medecin"=>$formData->contact_medecin,
                "mail_medecin"=>$formData->mail_medecin,
                "grade_medecin"=>$formData->grade_medecin,
                "fonction_medecin"=>$formData->fonction_medecin,
                "specialite_medecin"=>$formData->specialite_medecin,
                "Categorie_medecin"=>$formData->Categorie_medecin,
                "niveauEtude_medecin"=>$formData->niveauEtude_medecin,
                "anneeFinEtude_medecin"=>$formData->anneeFinEtude_medecin,
                "Ecole_medecin"=>$formData->Ecole_medecin,
                "Poids"=>$formData->Poids,
                "Taille"=>$formData->Taille,
                "TA"=>$formData->TA,
                "Temperature"=>$formData->Temperature,
                "FC"=>$formData->FC,
                "FR"=>$formData->FR,
                "Oxygene"=>$formData->Oxygene,
                "dateTriage"=>$formData->dateTriage,
                "dateMouvement"=>$formData->dateMouvement,
                "numroBon"=>$formData->numroBon,
                "Statut"=>$formData->Statut,
                "dateSortieMvt"=>$formData->dateSortieMvt,
                "motifSortieMvt"=>$formData->motifSortieMvt,
                "Typemouvement"=>$formData->Typemouvement,
                "noms"=>$formData->noms,
                "contact"=>$formData->contact,
                "mail"=>$formData->mail,
                "Categorie"=>$formData->Categorie,
                'photo'         =>  $imageName,
                "nomAvenue"=>$formData->nomAvenue,
                "nomQuartier"=>$formData->nomQuartier,
                "nomCommune"=>$formData->nomCommune,
                "nomVille"=>$formData->nomVille,
                "nomProvince"=>$formData->nomProvince,
                "nomPays"=>$formData->nomPays,
                "sexe_malade"=>$formData->sexe_malade,
                "dateNaissance_malade"=>$formData->dateNaissance_malade,
                "etatcivil_malade"=>$formData->etatcivil_malade,
                "numeroMaison_malade"=>$formData->numeroMaison_malade,
                "fonction_malade"=>$formData->fonction_malade,
                "personneRef_malade"=>$formData->personneRef_malade,
                "fonctioPersRef_malade"=>$formData->fonctioPersRef_malade,
                "contactPersRef_malade"=>$formData->contactPersRef_malade,
                "organisation_malade"=>$formData->organisation_malade,
                "numeroCarte_malade"=>$formData->numeroCarte_malade,
                "dateExpiration_malade"=>$formData->dateExpiration_malade,
                "PrixCons"=>$formData->PrixCons,
                'age_malade'=>$formData->age_malade,
                "exames_labo"=>$formData->exames_labo,
                "prescription_medicaments"=>$formData->prescription_medicaments,
                "maladie_chronique"=>$formData->maladie_chronique,
                "hopital"=>$formData->hopital              
            ]);

            return $this->msgJson('Information ajoutée avec succès');

        }
        else{

            $formData = json_decode($_POST['data']);
            tdata_malade::create([
                "nom_maladie"=>$formData->nom_maladie,
                "nom_categoriemaladie"=>$formData->nom_categoriemaladie,
                "plainte"=>$formData->plainte,
                "historique"=>$formData->historique,
                "antecedent"=>$formData->antecedent,
                "complementanamnese"=>$formData->complementanamnese,
                "examenphysique"=>$formData->examenphysique,
                "diagnostiquePres"=>$formData->diagnostiquePres,
                "dateDetailCons"=>$formData->dateDetailCons,
                "TypeConsultation"=>$formData->TypeConsultation,
                'dateConsultation'=>$formData->dateConsultation,
                "matricule_medecin"=>$formData->matricule_medecin,
                "noms_medecin"=>$formData->noms_medecin,
                "sexe_medecin"=>$formData->sexe_medecin,
                "datenaissance_medecin"=>$formData->datenaissance_medecin,
                "lieunaissnce_medecin"=>$formData->lieunaissnce_medecin,
                "provinceOrigine_medecin"=>$formData->provinceOrigine_medecin,
                "etatcivil_medecin"=>$formData->etatcivil_medecin,
                "contact_medecin"=>$formData->contact_medecin,
                "mail_medecin"=>$formData->mail_medecin,
                "grade_medecin"=>$formData->grade_medecin,
                "fonction_medecin"=>$formData->fonction_medecin,
                "specialite_medecin"=>$formData->specialite_medecin,
                "Categorie_medecin"=>$formData->Categorie_medecin,
                "niveauEtude_medecin"=>$formData->niveauEtude_medecin,
                "anneeFinEtude_medecin"=>$formData->anneeFinEtude_medecin,
                "Ecole_medecin"=>$formData->Ecole_medecin,
                "Poids"=>$formData->Poids,
                "Taille"=>$formData->Taille,
                "TA"=>$formData->TA,
                "Temperature"=>$formData->Temperature,
                "FC"=>$formData->FC,
                "FR"=>$formData->FR,
                "Oxygene"=>$formData->Oxygene,
                "dateTriage"=>$formData->dateTriage,
                "dateMouvement"=>$formData->dateMouvement,
                "numroBon"=>$formData->numroBon,
                "Statut"=>$formData->Statut,
                "dateSortieMvt"=>$formData->dateSortieMvt,
                "motifSortieMvt"=>$formData->motifSortieMvt,
                "Typemouvement"=>$formData->Typemouvement,
                "noms"=>$formData->noms,
                "contact"=>$formData->contact,
                "mail"=>$formData->mail,
                "Categorie"=>$formData->Categorie,
                'photo'         =>  "avatar.png",
                "nomAvenue"=>$formData->nomAvenue,
                "nomQuartier"=>$formData->nomQuartier,
                "nomCommune"=>$formData->nomCommune,
                "nomVille"=>$formData->nomVille,
                "nomProvince"=>$formData->nomProvince,
                "nomPays"=>$formData->nomPays,
                "sexe_malade"=>$formData->sexe_malade,
                "dateNaissance_malade"=>$formData->dateNaissance_malade,
                "etatcivil_malade"=>$formData->etatcivil_malade,
                "numeroMaison_malade"=>$formData->numeroMaison_malade,
                "fonction_malade"=>$formData->fonction_malade,
                "personneRef_malade"=>$formData->personneRef_malade,
                "fonctioPersRef_malade"=>$formData->fonctioPersRef_malade,
                "contactPersRef_malade"=>$formData->contactPersRef_malade,
                "organisation_malade"=>$formData->organisation_malade,
                "numeroCarte_malade"=>$formData->numeroCarte_malade,
                "dateExpiration_malade"=>$formData->dateExpiration_malade,
                "PrixCons"=>$formData->PrixCons,
                'age_malade'=>$formData->age_malade,
                "exames_labo"=>$formData->exames_labo,
                "prescription_medicaments"=>$formData->prescription_medicaments,
                "maladie_chronique"=>$formData->maladie_chronique,
                "hopital"=>$formData->hopital
            ]);
            return $this->msgJson('Information ajoutée avec succès');

        }

    }

    function updateData(Request $request)
    {

        if (!is_null($request->image)) 
        {
            $formData = json_decode($_POST['data']);
            $imageName = time().'.'.$request->image->getClientOriginalExtension();

            $request->image->move(public_path('/fichier'), $imageName);
           
            tdata_malade::where('id',$formData->id)->update([
                "nom_maladie"=>$formData->nom_maladie,
                "nom_categoriemaladie"=>$formData->nom_categoriemaladie,
                "plainte"=>$formData->plainte,
                "historique"=>$formData->historique,
                "antecedent"=>$formData->antecedent,
                "complementanamnese"=>$formData->complementanamnese,
                "examenphysique"=>$formData->examenphysique,
                "diagnostiquePres"=>$formData->diagnostiquePres,
                "dateDetailCons"=>$formData->dateDetailCons,
                "TypeConsultation"=>$formData->TypeConsultation,
                'dateConsultation'=>$formData->dateConsultation,
                "matricule_medecin"=>$formData->matricule_medecin,
                "noms_medecin"=>$formData->noms_medecin,
                "sexe_medecin"=>$formData->sexe_medecin,
                "datenaissance_medecin"=>$formData->datenaissance_medecin,
                "lieunaissnce_medecin"=>$formData->lieunaissnce_medecin,
                "provinceOrigine_medecin"=>$formData->provinceOrigine_medecin,
                "etatcivil_medecin"=>$formData->etatcivil_medecin,
                "contact_medecin"=>$formData->contact_medecin,
                "mail_medecin"=>$formData->mail_medecin,
                "grade_medecin"=>$formData->grade_medecin,
                "fonction_medecin"=>$formData->fonction_medecin,
                "specialite_medecin"=>$formData->specialite_medecin,
                "Categorie_medecin"=>$formData->Categorie_medecin,
                "niveauEtude_medecin"=>$formData->niveauEtude_medecin,
                "anneeFinEtude_medecin"=>$formData->anneeFinEtude_medecin,
                "Ecole_medecin"=>$formData->Ecole_medecin,
                "Poids"=>$formData->Poids,
                "Taille"=>$formData->Taille,
                "TA"=>$formData->TA,
                "Temperature"=>$formData->Temperature,
                "FC"=>$formData->FC,
                "FR"=>$formData->FR,
                "Oxygene"=>$formData->Oxygene,
                "dateTriage"=>$formData->dateTriage,
                "dateMouvement"=>$formData->dateMouvement,
                "numroBon"=>$formData->numroBon,
                "Statut"=>$formData->Statut,
                "dateSortieMvt"=>$formData->dateSortieMvt,
                "motifSortieMvt"=>$formData->motifSortieMvt,
                "Typemouvement"=>$formData->Typemouvement,
                "noms"=>$formData->noms,
                "contact"=>$formData->contact,
                "mail"=>$formData->mail,
                "Categorie"=>$formData->Categorie,
                'photo'         =>  $imageName,
                "nomAvenue"=>$formData->nomAvenue,
                "nomQuartier"=>$formData->nomQuartier,
                "nomCommune"=>$formData->nomCommune,
                "nomVille"=>$formData->nomVille,
                "nomProvince"=>$formData->nomProvince,
                "nomPays"=>$formData->nomPays,
                "sexe_malade"=>$formData->sexe_malade,
                "dateNaissance_malade"=>$formData->dateNaissance_malade,
                "etatcivil_malade"=>$formData->etatcivil_malade,
                "numeroMaison_malade"=>$formData->numeroMaison_malade,
                "fonction_malade"=>$formData->fonction_malade,
                "personneRef_malade"=>$formData->personneRef_malade,
                "fonctioPersRef_malade"=>$formData->fonctioPersRef_malade,
                "contactPersRef_malade"=>$formData->contactPersRef_malade,
                "organisation_malade"=>$formData->organisation_malade,
                "numeroCarte_malade"=>$formData->numeroCarte_malade,
                "dateExpiration_malade"=>$formData->dateExpiration_malade,
                "PrixCons"=>$formData->PrixCons,
                'age_malade'=>$formData->age_malade,
                "exames_labo"=>$formData->exames_labo,
                "prescription_medicaments"=>$formData->prescription_medicaments,
                "maladie_chronique"=>$formData->maladie_chronique,
                "hopital"=>$formData->hopital              

            ]);
            return $this->msgJson('Modifcation avec succès');

        }
        else{

            $formData = json_decode($_POST['data']);
           

            tdata_malade::where('id',$formData->id)->update([
                "nom_maladie"=>$formData->nom_maladie,
                "nom_categoriemaladie"=>$formData->nom_categoriemaladie,
                "plainte"=>$formData->plainte,
                "historique"=>$formData->historique,
                "antecedent"=>$formData->antecedent,
                "complementanamnese"=>$formData->complementanamnese,
                "examenphysique"=>$formData->examenphysique,
                "diagnostiquePres"=>$formData->diagnostiquePres,
                "dateDetailCons"=>$formData->dateDetailCons,
                "TypeConsultation"=>$formData->TypeConsultation,
                'dateConsultation'=>$formData->dateConsultation,
                "matricule_medecin"=>$formData->matricule_medecin,
                "noms_medecin"=>$formData->noms_medecin,
                "sexe_medecin"=>$formData->sexe_medecin,
                "datenaissance_medecin"=>$formData->datenaissance_medecin,
                "lieunaissnce_medecin"=>$formData->lieunaissnce_medecin,
                "provinceOrigine_medecin"=>$formData->provinceOrigine_medecin,
                "etatcivil_medecin"=>$formData->etatcivil_medecin,
                "contact_medecin"=>$formData->contact_medecin,
                "mail_medecin"=>$formData->mail_medecin,
                "grade_medecin"=>$formData->grade_medecin,
                "fonction_medecin"=>$formData->fonction_medecin,
                "specialite_medecin"=>$formData->specialite_medecin,
                "Categorie_medecin"=>$formData->Categorie_medecin,
                "niveauEtude_medecin"=>$formData->niveauEtude_medecin,
                "anneeFinEtude_medecin"=>$formData->anneeFinEtude_medecin,
                "Ecole_medecin"=>$formData->Ecole_medecin,
                "Poids"=>$formData->Poids,
                "Taille"=>$formData->Taille,
                "TA"=>$formData->TA,
                "Temperature"=>$formData->Temperature,
                "FC"=>$formData->FC,
                "FR"=>$formData->FR,
                "Oxygene"=>$formData->Oxygene,
                "dateTriage"=>$formData->dateTriage,
                "dateMouvement"=>$formData->dateMouvement,
                "numroBon"=>$formData->numroBon,
                "Statut"=>$formData->Statut,
                "dateSortieMvt"=>$formData->dateSortieMvt,
                "motifSortieMvt"=>$formData->motifSortieMvt,
                "Typemouvement"=>$formData->Typemouvement,
                "noms"=>$formData->noms,
                "contact"=>$formData->contact,
                "mail"=>$formData->mail,
                "Categorie"=>$formData->Categorie,
                'photo'         =>  "avatar.png",
                "nomAvenue"=>$formData->nomAvenue,
                "nomQuartier"=>$formData->nomQuartier,
                "nomCommune"=>$formData->nomCommune,
                "nomVille"=>$formData->nomVille,
                "nomProvince"=>$formData->nomProvince,
                "nomPays"=>$formData->nomPays,
                "sexe_malade"=>$formData->sexe_malade,
                "dateNaissance_malade"=>$formData->dateNaissance_malade,
                "etatcivil_malade"=>$formData->etatcivil_malade,
                "numeroMaison_malade"=>$formData->numeroMaison_malade,
                "fonction_malade"=>$formData->fonction_malade,
                "personneRef_malade"=>$formData->personneRef_malade,
                "fonctioPersRef_malade"=>$formData->fonctioPersRef_malade,
                "contactPersRef_malade"=>$formData->contactPersRef_malade,
                "organisation_malade"=>$formData->organisation_malade,
                "numeroCarte_malade"=>$formData->numeroCarte_malade,
                "dateExpiration_malade"=>$formData->dateExpiration_malade,
                "PrixCons"=>$formData->PrixCons,
                'age_malade'=>$formData->age_malade,
                "exames_labo"=>$formData->exames_labo,
                "prescription_medicaments"=>$formData->prescription_medicaments,
                "maladie_chronique"=>$formData->maladie_chronique,
                "hopital"=>$formData->hopital              

            ]);
            return $this->msgJson('Modifcation avec succès');

        }

    }

   
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $data = DB::table("tdata_malade")
        ->select("nom_maladie","nom_categoriemaladie","plainte","historique","antecedent","complementanamnese","examenphysique",
        "diagnostiquePres","dateDetailCons","TypeConsultation",
        'dateConsultation',"matricule_medecin","noms_medecin","sexe_medecin","datenaissance_medecin",
        "lieunaissnce_medecin","provinceOrigine_medecin","etatcivil_medecin",
        "contact_medecin","mail_medecin","grade_medecin","fonction_medecin","specialite_medecin",
        "Categorie_medecin","niveauEtude_medecin","anneeFinEtude_medecin","Ecole_medecin","photo_medecin",
        "Poids","Taille","TA","Temperature","FC","FR","Oxygene",
        "dateTriage","dateMouvement","numroBon","Statut","dateSortieMvt","motifSortieMvt",
        "Typemouvement","noms","contact","mail","Categorie","photo","nomAvenue",
        "nomQuartier","nomCommune","nomVille","nomProvince",
        "nomPays","sexe_malade","dateNaissance_malade","etatcivil_malade",
        "numeroMaison_malade","fonction_malade","personneRef_malade","fonctioPersRef_malade",
        "contactPersRef_malade","organisation_malade","numeroCarte_malade",
        "dateExpiration_malade","PrixCons",'age_malade',"exames_labo","prescription_medicaments",
        "maladie_chronique","hopital", "tdata_malade.created_at")
        ->where('tdata_malade.id', $id)
        ->get();

        return response()->json(['data'    =>  $data]);
    }

   

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $data = tdata_malade::where("id", $id)->delete();
        return response()->json(['data'  =>  "Suppression avec succès!!!"]);
    }

    
}
