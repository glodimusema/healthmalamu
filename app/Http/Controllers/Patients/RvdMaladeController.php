<?php

namespace App\Http\Controllers\Patients;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Patients\{trdv_malade};
use App\Traits\{GlobalMethod,Slug};
use DB;
class RvdMaladeController extends Controller
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
        $data = DB::table("trdv_malade")
        ->select('id','refCarte','refUser','dateRDV','noms','contact','lieu','motif','statut','author');

        if (!is_null($request->get('query'))) {
            # code...
            $query = $this->Gquery($request);

            $data->where('noms', 'like', '%'.$query.'%')
            ->orWhere('refCarte', 'like', '%'.$query.'%')
            ->orderBy("trdv_malade.dateRDV", "desc");

            return $this->apiData($data->paginate(3));
           

        }
        $data->orderBy("trdv_malade.dateRDV", "desc");
        return $this->apiData($data->paginate(3));
    }

    public function showRDV_Carte(Request $request,$refCarte)
    {
        //
        $data = DB::table("trdv_malade")
        ->select('id','refCarte','refUser','dateRDV','noms','contact','lieu','motif','statut','author');

        if (!is_null($request->get('query'))) {
            # code...
            $query = $this->Gquery($request);

            $data->where([
                ['noms', 'like', '%'.$query.'%'],
                ['refCarte', $refCarte]
            ])
            ->orderBy("trdv_malade.dateRDV", "desc");

            return $this->apiData($data->paginate(3));
           

        }
        $data->where('refCarte', $refCarte)
        ->orderBy("trdv_malade.dateRDV", "desc");
        return $this->apiData($data->paginate(3));
    }

   

   //id','refCarte','refUser','dateRDV','noms','contact','lieu','motif','statut','author'

    function insertData(Request $request)
    {

        $data = trdv_malade::create([
            'refCarte'      =>  $request->refCarte,
            'refUser'     =>  $request->refUser,
            'dateRDV' =>  $request->dateRDV,
            'noms'   =>  $request->noms,
            'contact'   =>  $request->contact,
            'lieu'   =>  $request->lieu,
            'motif'   =>  $request->motif,
            'statut'   =>  $request->statut,
            'author'   =>  $request->author
        ]);

        return $this->msgJson('Information ajoutée avec succès');

    }

    function updateData(Request $request)
    {

        $data = trdv_malade::where("id", $request->id)->update([
            'refCarte'      =>  $request->refCarte,
            'refUser'     =>  $request->refUser,
            'dateRDV' =>  $request->dateRDV,
            'noms'   =>  $request->noms,
            'contact'   =>  $request->contact,
            'lieu'   =>  $request->lieu,
            'motif'   =>  $request->motif,
            'statut'   =>  $request->statut,
            'author'   =>  $request->author
        ]);
        return response()->json(['data'  =>  "Modification avec succès!!!"]);

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
        $data = DB::table("trdv_malade")
        ->select('id','refCarte','refUser','dateRDV','noms','contact','lieu','motif','statut','author')
        ->where('trdv_malade.id', $id)
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
        $data = trdv_malade::where("id", $id)->delete();
        return response()->json(['data'  =>  "Suppression avec succès!!!"]);
    }

    
}
