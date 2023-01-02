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
        ->join('users','users.id','=','tcarte.refUser') 
        ->select('tcarte.id','refUser','name,email,telephone,adresse,sexe,avatar');

        if (!is_null($request->get('query'))) {
            # code...
            $query = $this->Gquery($request);

            $data->where('name', 'like', '%'.$query.'%')          
            ->orderBy("name", "asc");

            return $this->apiData($data->paginate(3));
           

        }
        $data->orderBy("tcarte.dateRDV", "desc");
        return $this->apiData($data->paginate(3));
    }

    
    function insertData(Request $request)
    {

        $data = tcarte::create([           
            'refUser'     =>  $request->refUser
        ]);

        return $this->msgJson('Information ajoutée avec succès');

    }

    function updateData(Request $request)
    {

        $data = tcarte::where("id", $request->id)->update([
            'refUser'     =>  $request->refUser
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
        $data = DB::table("tcarte")
        ->join('users','users.id','=','tcarte.refUser') 
        ->select('tcarte.id','refUser','name,email,telephone,adresse,sexe,avatar')
        ->where('tcarte.id', $id)
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
