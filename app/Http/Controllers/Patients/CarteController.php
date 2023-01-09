<?php

namespace App\Http\Controllers\Patients;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Patients\{tcarte};
use App\Traits\{GlobalMethod,Slug};
use DB;
class CarteController extends Controller
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
        $data = DB::table("tcarte")       
        ->select('tcarte.id','refUser','dateExpiration','numeroCarte','codeSecret','noms_profil','adresse_profil',
        'telephone_profil','datenaissance_profil','groupesanguin','photo_profil','created_at','updated_at');

        if (!is_null($request->get('query'))) {
            # code...
            $query = $this->Gquery($request);

            $data->where('noms_profil', 'like', '%'.$query.'%')          
            ->orderBy("noms_profil", "asc");

            return $this->apiData($data->paginate(3));
           

        }
        $data->orderBy("tcarte.created_at", "desc");
        return $this->apiData($data->paginate(3));
    }


    function insertData(Request $request)
    {

        if (!is_null($request->image)) 
        {
            $formData = json_decode($_POST['data']);
            $imageName = time().'.'.$request->image->getClientOriginalExtension();

            $request->image->move(public_path('/fichier'), $imageName);
            tcarte::create([
                'refUser'     =>  $formData->refUser,
                'dateExpiration'     =>  $formData->dateExpiration,
                'numeroCarte'     =>  $formData->numeroCarte,
                'codeSecret'     =>  $formData->codeSecret,
                'noms_profil'     =>  $formData->noms_profil,
                'adresse_profil'     =>  $formData->adresse_profil,
                'telephone_profil'     =>  $formData->telephone_profil,
                'datenaissance_profil'     =>  $formData->datenaissance_profil,
                'groupesanguin'     =>  $formData->groupesanguin,
                'photo_profil'         =>  $imageName,
            ]);

            return $this->msgJson('Information ajoutée avec succès');

        }
        else{

            $formData = json_decode($_POST['data']);
            tcarte::create([
                'refUser'     =>  $formData->refUser,
                'dateExpiration'     =>  $formData->dateExpiration,
                'numeroCarte'     =>  $formData->numeroCarte,
                'codeSecret'     =>  $formData->codeSecret,
                'noms_profil'     =>  $formData->noms_profil,
                'adresse_profil'     =>  $formData->adresse_profil,
                'telephone_profil'     =>  $formData->telephone_profil,
                'datenaissance_profil'     =>  $formData->datenaissance_profil,
                'groupesanguin'     =>  $formData->groupesanguin,
                'photo_profil'         =>  "avatar.png"
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
           
            tcarte::where('id',$formData->id)->update([
                'refUser'     =>  $formData->refUser,
                'dateExpiration'     =>  $formData->dateExpiration,
                'numeroCarte'     =>  $formData->numeroCarte,
                'codeSecret'     =>  $formData->codeSecret,
                'noms_profil'     =>  $formData->noms_profil,
                'adresse_profil'     =>  $formData->adresse_profil,
                'telephone_profil'     =>  $formData->telephone_profil,
                'datenaissance_profil'     =>  $formData->datenaissance_profil,
                'groupesanguin'     =>  $formData->groupesanguin,
                'photo_profil'         =>  $imageName,        

            ]);
            return $this->msgJson('Modifcation avec succès');

        }
        else{

            $formData = json_decode($_POST['data']);
           

            tcarte::where('id',$formData->id)->update([
                'refUser'     =>  $formData->refUser,
                'dateExpiration'     =>  $formData->dateExpiration,
                'numeroCarte'     =>  $formData->numeroCarte,
                'codeSecret'     =>  $formData->codeSecret,
                'noms_profil'     =>  $formData->noms_profil,
                'adresse_profil'     =>  $formData->adresse_profil,
                'telephone_profil'     =>  $formData->telephone_profil,
                'datenaissance_profil'     =>  $formData->datenaissance_profil,
                'groupesanguin'     =>  $formData->groupesanguin,
                'photo_profil'         =>  "avatar.png"
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
        $data = DB::table("tcarte")       
        ->select('tcarte.id','refUser','dateExpiration','numeroCarte','codeSecret','noms_profil','adresse_profil',
        'telephone_profil','datenaissance_profil','groupesanguin','photo_profil','created_at','updated_at')
        ->where('tcarte.id', $id)
        ->get();

        return response()->json(['data'    =>  $data]);
    }

    public function carte_by_user($refUser)
    {
        //
        $data = DB::table("tcarte")       
        ->select('tcarte.id','refUser','dateExpiration','numeroCarte','codeSecret','noms_profil','adresse_profil',
        'telephone_profil','datenaissance_profil','groupesanguin','photo_profil','created_at','updated_at')
        ->where('tcarte.refUser', $refUser)
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
        $data = tcarte::where("id", $id)->delete();
        return response()->json(['data'  =>  "Suppression avec succès!!!"]);
    }

    
}
